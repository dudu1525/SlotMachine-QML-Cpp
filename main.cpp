#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "slot_machine.h"
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    slot_machine *slotmachine=new slot_machine(&app);
    qmlRegisterSingletonInstance("com.company.slot_machine",1,0,"SlotMachine",slotmachine );
    const QUrl url(QStringLiteral("qrc:/com/company/slot_machine/main.qml"));

   // QObject *rootObject = engine.rootObjects().first();
   // QObject *princ = rootObject->findChild<QObject*>("princ"); // This line looks for "princ" in QML
   // if (princ) {
      //  engine.rootContext()->setContextProperty("MainButton", princ);  // Add this line after loading QML
   // }


    //QObject *rootObject = engine.rootObjects().first();

    // Set context property to expose 'princ' to QML
  //  engine.rootContext()->setContextProperty("princ", rootObject->findChild<QObject*>("princ"));

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
