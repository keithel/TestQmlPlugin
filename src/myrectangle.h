#ifndef MYRECTANGLE_H
#define MYRECTANGLE_H

#include <QQuickItem>
#include <QColor>

class MyRectangle : public QQuickItem
{
    Q_OBJECT
    Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
    Q_DISABLE_COPY(MyRectangle)

public:
    MyRectangle(QQuickItem *parent = 0);
    ~MyRectangle();

    void setColor(const QColor& color);
    QColor color() const;

signals:
    void colorChanged();

private:
    QColor mColor;
};

#endif // MYRECTANGLE_H
