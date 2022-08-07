package com.example.cinemahall

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Matrix
import android.graphics.RectF
import android.util.AttributeSet
import android.view.*
import android.view.GestureDetector.SimpleOnGestureListener
import android.view.ScaleGestureDetector.OnScaleGestureListener
import android.view.View.OnTouchListener
import android.view.ViewTreeObserver.OnGlobalLayoutListener
import android.widget.ImageView
import androidx.viewpager.widget.ViewPager


/**
 * Пользовательский ImageView:
 * 1. Предварительная реализация мультитач, свободного масштабирования и обработки разрывов при свободном масштабировании картинок. По умолчанию
 * 2. Свободно перемещайте увеличенное изображение с помощью мультитач.
 * 3. Дважды щелкните, чтобы увеличить или уменьшить изображение.
 * 4. Совместимость с ViewPager
 */
class ZoomImageView @JvmOverloads constructor(// Контекст
     context: Context, attrs: AttributeSet? = null, defStyle: Int = 0
) : androidx.appcompat.widget.AppCompatImageView(context, attrs, defStyle), OnGlobalLayoutListener,
    OnScaleGestureListener, OnTouchListener {
    private var mOnce = false // Выполняется ли он один раз

    /**
     * Исходный коэффициент масштабирования
     */
    private var initScale = 0f

    /**
     * коэффициент масштабирования
     */
    private var midScale = 0f

    /**
     * Максимальный коэффициент масштабирования
     */
    private var maxScale = 0f

    /**
     * Максимальный коэффициент масштабирования
     */
    private var minScale = 0f

    /**
     * Матрица масштабирования
     */
    private val scaleMatrix: Matrix

    /**
     * Мониторинг жестов масштабирования
     */
    private val mScaleGestureDetector: ScaleGestureDetector?

    /**
     * Количество пальцев, перемещенных в последний раз, также можно считать большим количеством очков
     */
    private var mLastPoint = 0

    /**
     * Положение x последней центральной точки
     */
    private var mLastX = 0f

    /**
     * Положение y последней центральной точки
     */
    private var mLastY = 0f

    /**
     * Критическое значение, то есть критическое значение того, запускать ли движение
     */
    private val mScaleSlop: Float

    /**
     * Это подвижное
     */
    private var isCanDrag = false

    /**
     * Отслеживайте различные жесты, например двойное касание
     */
    private var mGestureDetector: GestureDetector? = null

    /**
     * Выполняется масштабирование двойным щелчком
     */
    private var isAutoScale = false
    ///////////////////////////////////////////////////////////////////////////////
    /**
     * Настроить ли свободный зум
     */
    private var autoZoom = false

    /**
     * Максимальное увеличение
     */
    private val maxRatio = 4

    /**
     * Минимальный коэффициент уменьшения
     */
    private val minRatio = 2

    /**
     * Установите, следует ли поддерживать двойной щелчок для увеличения
     */
    fun setDoubleZoom(doubleZoom: Boolean) {
        // Двойной щелчок для увеличения в 2 раза и уменьшения
        mGestureDetector = if (doubleZoom) {
            GestureDetector(context, MySimpleOnGestureListener())
        } else {
            null
        }
    }

    /**
     * Установите, следует ли поддерживать масштабирование жестов
     */
    fun setAutoZoom(autoZoom: Boolean) {
        this.autoZoom = autoZoom
    }

    /**
     * Этот метод вызывается, когда представление привязано к окну, и он будет вызываться только один раз, который вызывается перед методом onDraw представления
     */
    override fun onAttachedToWindow() {
        super.onAttachedToWindow()
        // Регистрируем слушателя
        viewTreeObserver.addOnGlobalLayoutListener(this)
    }

    /**
     * Этот метод вызывается при уничтожении представления
     */
    @SuppressLint("NewApi")
    override fun onDetachedFromWindow() {
        super.onDetachedFromWindow()
        // Отменяем слушателя
        viewTreeObserver.removeOnGlobalLayoutListener(this)
    }

    /**
     * Когда макет представления загружен или макет изменен, OnGlobalLayoutListener будет прослушивать и вызывать этот метод
     * Следовательно, этот метод может вызываться несколько раз, а прослушиватель необходимо зарегистрировать и отменить в соответствующем месте.
     *
     *
     * Картинка центрируется и отображается в полноэкранном режиме Просмотр
     */
    override fun onGlobalLayout() {
        if (!mOnce) {
            // Получить Drawable текущего представления
            val d = drawable ?: return

            // Получить ширину и высоту Drawable
            val dw = d.intrinsicWidth
            val dh = d.intrinsicHeight

            // Получить ширину и высоту текущего вида
            val width = width
            val height = height

            // Коэффициент масштабирования, масштаб может быть уменьшенным или увеличенным, в зависимости от того, больше или меньше его значение 1
            var scale = 1.0f

            // Если только ширина изображения больше, чем ширина просмотра, изображение должно быть уменьшено на ширину
            if (dw > width && dh < height) {
                scale = width * 1.0f / dw
            }
            // Если изображение и высота больше, чем вид, изображение должно быть уменьшено в наименьшем соотношении
            if (dw > width && dh > height) {
                scale = Math.min(width * 1.0f / dw, height * 1.0f / dh)
            }
            // Если ширина и высота изображения меньше, чем у вида, изображение следует увеличить в наименьшем масштабе
            if (dw < width && dh < height) {
                scale = Math.min(width * 1.0f / dw, height * 1.0f / dh)
            }
            // Если только высота больше, чем вид, изображение можно уменьшить в соответствии с высотой
            if (dw < width && dh > height) {
                scale = height * 1.0f / dh
            }

            // Начальный коэффициент масштабирования
            initScale = scale
            midScale = initScale * 2
            maxScale = initScale * maxRatio
            minScale = initScale / minRatio

            // Перемещаем картинку в центр просмотра
            val dx = width / 2 - dw / 2
            val dy = height / 2 - dh / 2
            scaleMatrix.postTranslate(dx.toFloat(), dy.toFloat())

            // Увеличить картинку
            scaleMatrix.postScale(
                initScale,
                initScale,
                (width / 2).toFloat(),
                (height / 2).toFloat()
            )
            imageMatrix = scaleMatrix
            mOnce = true
        }
    }

    /**
     * Получить текущий масштабированный коэффициент
     *
     * @return Поскольку отношение x-direction и y-direction одинаковое, может быть возвращен только коэффициент масштабирования x-direction
     */
    private val drawableScale: Float
        private get() {
            val values = FloatArray(9)
            scaleMatrix.getValues(values)
            return values[Matrix.MSCALE_X]
        }

    /**
     * Этот метод вызывается при запуске жеста масштабирования
     */
    override fun onScaleBegin(detector: ScaleGestureDetector): Boolean {
        // Возвращаемся к истине, событие жеста масштабирования пойдет вниз, иначе методы onScale и onScaleEnd не будут выполняться
        return autoZoom
    }

    /**
     * Вызовите этот метод после завершения жеста масштабирования
     */
    override fun onScaleEnd(detector: ScaleGestureDetector) {}

    /**
     * Этот метод вызывается, когда выполняется жест масштабирования
     *
     *
     * Диапазон масштабирования: initScale ~ maxScale
     */
    override fun onScale(detector: ScaleGestureDetector): Boolean {
        if (drawable == null) {
            return true // Если изображения нет, следующий код запускать не обязательно
        }

        // Получаем текущий масштабированный коэффициент
        val scale = drawableScale
        // Получить текущий коэффициент масштабирования, который относится к значению предварительного масштабирования для жеста масштабирования пальцем
        var scaleFactor = detector.scaleFactor

        // Если текущий коэффициент масштабирования меньше максимального, а коэффициент масштабирования больше 1, это означает, что вы хотите увеличить масштаб. Это разрешено, поскольку вы можете снова увеличить масштаб.
        // Если текущий коэффициент масштабирования больше минимального, а коэффициент масштабирования меньше 1, это означает, что вы хотите уменьшить масштаб, что также разрешено.
        if ((scale < maxScale
                    && scaleFactor > 1.0f)
            || (scale > minScale
                    && scaleFactor < 1.0f)
        ) {

            // Если уменьшенный диапазон меньше минимально допустимого диапазона, сбрасываем коэффициент масштабирования до текущего коэффициента состояния
            if (scale * scaleFactor < minScale && scaleFactor < 1.0f) {
                scaleFactor = minScale / scale
            }

            // Если уменьшенный диапазон меньше минимально допустимого диапазона, сбрасываем коэффициент масштабирования до текущего коэффициента состояния
            if (scale * scaleFactor > maxScale && scaleFactor > 1.0f) {
                scaleFactor = maxScale / scale
            }
            //scaleMatrix.postScale(1.0f, 1.0f, getWidth() / 2, getHeight() / 2);
            scaleMatrix.postScale(scaleFactor, scaleFactor, detector.focusX, detector.focusY)
            checkBoderAndCenter() // Решаем проблему, что граница изображения и экран не центрируются или центрируются после масштабирования
            imageMatrix = scaleMatrix // Не забудьте установить это, я всегда забываю
        }
        return true
    }

    /**
     * Достигните двойного щелчка, чтобы увеличить или уменьшить изображение. Используемая точка знаний - это GestureDetector, который используется для отслеживания событий двойного щелчка.
     * Что касается увеличения изображения после двойного щелчка, я думаю, вы уже знакомы с этим в предыдущих статьях.
     * Но сложность в том, что нам нужно медленно увеличивать или уменьшать масштаб после двойного щелчка, вместо того, чтобы увеличивать или уменьшать масштаб до целевого значения сразу.
     * Здесь мы рассмотрим это в связке с потоками. На самом деле логика обработки тоже очень проста:
     * Например, мы время от времени увеличиваем изображение, а затем смотрим, достигает ли оно требуемого коэффициента масштабирования.
     * Если он будет достигнут, он будет прекращен, в противном случае он будет продолжать увеличиваться, пока не достигнет требования.
     */
    private inner class MySimpleOnGestureListener : SimpleOnGestureListener() {
        override fun onDoubleTap(e: MotionEvent): Boolean {
            // Если вы выполняете масштабирование двойным щелчком, пропустите сразу
            if (isAutoScale) {
                return true
            }
            val x = e.x
            val y = e.y
            // Получить текущий коэффициент масштабирования
            val scale = drawableScale
            // Если он меньше midScale, все увеличиваются, иначе все уменьшаются до initScale
            isAutoScale = if (scale < midScale) {
                //  scaleMatrix.postScale(midScale/scale,midScale/scale, x, y);
                //  setImageMatrix(scaleMatrix);
                postDelayed(AutoScaleRunnable(midScale, x, y), 16)
                true
            } else {
                //  scaleMatrix.postScale(initScale/scale,initScale/scale, x, y);
                //  setImageMatrix(scaleMatrix);
                postDelayed(AutoScaleRunnable(initScale, x, y), 16)
                true
            }
            return true
        }
    }

    /**
     * Дважды щелкните для увеличения, чтобы использовать градиент
     *
     * @author fuly1314
     */
    private inner class AutoScaleRunnable(// Масштабирование целевого значения
        private val targetScale: Float, private val x: Float, // Увеличить центральную точку
        private val y: Float
    ) :
        Runnable {
        private var tempScale = 0f
        private val BIGGER = 1.07f
        private val SMALL = 0.93f // масштабируемый градиент
        override fun run() {
            scaleMatrix.postScale(tempScale, tempScale, x, y)
            checkBoderAndCenter()
            imageMatrix = scaleMatrix
            val scale = drawableScale
            if (scale < targetScale && tempScale > 1.0f || scale > targetScale && tempScale < 1.0f) {
                postDelayed(this, 16)
            } else {
                scaleMatrix.postScale(targetScale / scale, targetScale / scale, x, y)
                checkBoderAndCenter()
                imageMatrix = scaleMatrix
                isAutoScale = false
            }
        }

        init {
            if (drawableScale < targetScale) {
                tempScale = BIGGER
            }
            if (drawableScale > targetScale) {
                tempScale = SMALL
            }
        }
    }

    /**
     * Решите проблему, связанную с тем, что граница изображения и экран не центрируются или не центрируются после масштабирования
     */
    private fun checkBoderAndCenter() {
        val rectf = drawableRectF
        val width = width
        val height = height
        var delaX = 0f
        var delaY = 0f
        if (rectf.width() >= width) {
            if (rectf.left > 0) {
                delaX = -rectf.left
            }
            if (rectf.right < width) {
                delaX = width - rectf.right
            }
        }
        if (rectf.height() >= height) {
            if (rectf.top > 0) {
                delaY = -rectf.top
            }
            if (rectf.bottom < height) {
                delaY = height - rectf.bottom
            }
        }
        if (rectf.width() < width) {
            delaX = width / 2 - rectf.right + rectf.width() / 2
        }
        if (rectf.height() < height) {
            delaY = height / 2 - rectf.bottom + rectf.height() / 2
        }
        scaleMatrix.postTranslate(delaX, delaY)
    }

    /**
     * Получите координаты четырех углов картинки после преобразования матрицы, а именно левого, верхнего, правого, нижнего
     *
     * @return
     */
    private val drawableRectF: RectF
        private get() {
            val matrix = scaleMatrix
            val rectf = RectF()
            val d = drawable
            if (d != null) {
                rectf[0f, 0f, d.intrinsicWidth.toFloat()] = d.intrinsicHeight.toFloat()
            }
            matrix.mapRect(rectf)
            return rectf
        }

    /**
     * Монитор сенсорных событий
     */
    override fun onTouch(v: View, event: MotionEvent): Boolean {
        if (mGestureDetector != null && mGestureDetector!!.onTouchEvent(event)) {
            return true
        }
        mScaleGestureDetector?.onTouchEvent(event)

        // Получаем количество точек, также называемое количеством пальцев на экране
        val pointCount = event.pointerCount
        var x = 0f
        var y = 0f // x и y центральной точки
        for (i in 0 until pointCount) {
            x += event.getX(i)
            y += event.getY(i)
        }

        // Находим положение центральной точки
        x /= pointCount.toFloat()
        y /= pointCount.toFloat()

        // Если количество пальцев изменилось, не двигайтесь
        if (mLastPoint != pointCount) {
            isCanDrag = false
            mLastX = x
            mLastY = y
        }
        mLastPoint = pointCount
        val rectf = drawableRectF
        when (event.action) {
            MotionEvent.ACTION_DOWN -> if (rectf.width() > width + 0.01 || rectf.height() > height + 0.01) {
                // Запрашиваем родительский класс не перехватывать событие ACTION_DOWN
                if (parent is ViewPager) this.parent.requestDisallowInterceptTouchEvent(true)
            }
            MotionEvent.ACTION_MOVE -> {
                if (rectf.width() > width + 0.01 || rectf.height() > height + 0.01) {
                    // Запрашиваем родительский класс не перехватывать событие ACTION_MOVE
                    if (parent is ViewPager) this.parent.requestDisallowInterceptTouchEvent(true)
                }
                // Находим пройденное расстояние
                var dx = x - mLastX
                var dy = y - mLastY
                if (!isCanDrag) {
                    isCanDrag = isCanDrag(dx, dy)
                }
                if (isCanDrag) {
                    // Если картинка может отображаться нормально, нет необходимости перемещать
                    if (rectf.width() <= width) {
                        dx = 0f
                    }
                    if (rectf.height() <= height) {
                        dy = 0f
                    }

                    // Начинаем двигаться
                    scaleMatrix.postTranslate(dx, dy)
                    // Решаем проблему, заключающуюся в том, что граница изображения и экран не центрируются или центрируются после перемещения
                    checkBoderAndCenterWhenMove()
                    imageMatrix = scaleMatrix
                }
                mLastX = x
                mLastY = y
            }
            MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> mLastPoint = 0
        }
        return true
    }

    /**
     * Решите проблему, связанную с тем, что граница изображения и экран не центрируются или не центрируются после перемещения
     * Это очень похоже на код, который мы написали ранее
     */
    private fun checkBoderAndCenterWhenMove() {
        val rectf = drawableRectF
        var delaX = 0f
        var delaY = 0f
        val width = width
        val height = height
        if (rectf.width() > width && rectf.left > 0) {
            delaX = -rectf.left
        }
        if (rectf.width() > width && rectf.right < width) {
            delaX = width - rectf.right
        }
        if (rectf.height() > height && rectf.top > 0) {
            delaY = -rectf.top
        }
        if (rectf.height() > height && rectf.bottom < height) {
            delaY = height - rectf.bottom
        }
        scaleMatrix.postTranslate(delaX, delaY)
    }

    /**
     * Определите, запускать ли эффект движения
     *
     * @param dx
     * @param dy
     * @return
     */
    private fun isCanDrag(dx: Float, dy: Float): Boolean {
        return Math.sqrt((dx * dx + dy * dy).toDouble()) > mScaleSlop
    }

    init {
        // Матрица, используемая для управления изображением
        scaleMatrix = Matrix()
        scaleType = ScaleType.MATRIX
        // Обратный вызов жеста
        mScaleGestureDetector = ScaleGestureDetector(context, this)
        // Сенсорный обратный вызов
        setOnTouchListener(this)
        // Получаем заданное системой критическое значение для срабатывания эффекта движения
        mScaleSlop = ViewConfiguration.get(context).scaledTouchSlop.toFloat()
    }
}