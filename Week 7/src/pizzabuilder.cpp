#include "pizzabuilder.h"
#include "pizzaprovider.h"
#include <iostream>
using std::cout;
using std::endl;
PizzaBuilder::PizzaBuilder(PizzaProvider *provider, QObject *parent) : QObject(parent), mPizzaProvider(provider)
{
    connect(mPizzaProvider, &PizzaProvider::readyForUpdate, this, &PizzaBuilder::updateLivePizza);
}


void PizzaBuilder::chooseTopping(QString topping)
{
    mPizzaProvider->addTopping(topping);
    cout << "choose topping" << endl;
}

void  PizzaBuilder::removeTopping(QString topping)
{
    mPizzaProvider->removeTopping(topping);
    cout << "remove topping" << endl;
}
