#include "myrectangle.h"

MyRectangle::MyRectangle(QQuickItem *parent):
    QQuickItem(parent),
    mColor(QColor("red"))
{
    // By default, QQuickItem does not draw anything. If you subclass
    // QQuickItem to create a visual item, you will need to uncomment the
    // following line and re-implement updatePaintNode()

    // setFlag(ItemHasContents, true);
}

MyRectangle::~MyRectangle()
{
}

void MyRectangle::setColor(const QColor &color)
{
    mColor = color;
    emit colorChanged();
}

QColor MyRectangle::color() const
{
    return mColor;
}
