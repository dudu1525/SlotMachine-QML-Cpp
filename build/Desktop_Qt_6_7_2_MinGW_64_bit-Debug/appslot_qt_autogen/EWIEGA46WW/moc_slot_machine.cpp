/****************************************************************************
** Meta object code from reading C++ file 'slot_machine.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.7.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../slot_machine.h"
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'slot_machine.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.7.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {

#ifdef QT_MOC_HAS_STRINGDATA
struct qt_meta_stringdata_CLASSslot_machineENDCLASS_t {};
constexpr auto qt_meta_stringdata_CLASSslot_machineENDCLASS = QtMocHelpers::stringData(
    "slot_machine",
    "SUMChanged",
    "",
    "betChanged",
    "ireel1Changed",
    "ireel2Changed",
    "ireel3Changed",
    "ireel4Changed",
    "ireel5Changed",
    "aChanged",
    "winChanged",
    "winscombChanged",
    "scatterChanged",
    "sumwonChanged",
    "lastwinChanged",
    "highlChanged",
    "chance50Changed",
    "historyChanged",
    "substractBet",
    "canPlaceBet",
    "randomfind",
    "ireel1",
    "ireel2",
    "ireel3",
    "ireel4",
    "ireel5",
    "create_reels",
    "int[5][23]",
    "b",
    "getImagePath",
    "number",
    "delayimages",
    "nr",
    "getreels",
    "getwins",
    "a",
    "calcwins",
    "winscomb",
    "scatter",
    "sumwon",
    "is0",
    "lastwincalc",
    "calcsquares",
    "resetsquares",
    "generate50",
    "findnrdoublings",
    "getimagecard",
    "index",
    "getimagehistory",
    "updatehistory",
    "sum",
    "bet",
    "chance50",
    "lastwin",
    "highl",
    "history"
);
#else  // !QT_MOC_HAS_STRINGDATA
#error "qtmochelpers.h not found or too old."
#endif // !QT_MOC_HAS_STRINGDATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSslot_machineENDCLASS[] = {

 // content:
      12,       // revision
       0,       // classname
       0,    0, // classinfo
      34,   14, // methods
      15,  296, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      16,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    0,  218,    2, 0x06,   16 /* Public */,
       3,    0,  219,    2, 0x06,   17 /* Public */,
       4,    0,  220,    2, 0x06,   18 /* Public */,
       5,    0,  221,    2, 0x06,   19 /* Public */,
       6,    0,  222,    2, 0x06,   20 /* Public */,
       7,    0,  223,    2, 0x06,   21 /* Public */,
       8,    0,  224,    2, 0x06,   22 /* Public */,
       9,    0,  225,    2, 0x06,   23 /* Public */,
      10,    0,  226,    2, 0x06,   24 /* Public */,
      11,    0,  227,    2, 0x06,   25 /* Public */,
      12,    0,  228,    2, 0x06,   26 /* Public */,
      13,    0,  229,    2, 0x06,   27 /* Public */,
      14,    0,  230,    2, 0x06,   28 /* Public */,
      15,    0,  231,    2, 0x06,   29 /* Public */,
      16,    0,  232,    2, 0x06,   30 /* Public */,
      17,    0,  233,    2, 0x06,   31 /* Public */,

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
      18,    0,  234,    2, 0x02,   32 /* Public */,
      19,    0,  235,    2, 0x02,   33 /* Public */,
      20,    5,  236,    2, 0x02,   34 /* Public */,
      26,    6,  247,    2, 0x02,   40 /* Public */,
      29,    1,  260,    2, 0x102,   47 /* Public | MethodIsConst  */,
      31,    1,  263,    2, 0x02,   49 /* Public */,
      33,    1,  266,    2, 0x02,   51 /* Public */,
      34,    1,  269,    2, 0x02,   53 /* Public */,
      36,    4,  272,    2, 0x02,   55 /* Public */,
      40,    0,  281,    2, 0x02,   60 /* Public */,
      41,    0,  282,    2, 0x02,   61 /* Public */,
      42,    0,  283,    2, 0x02,   62 /* Public */,
      43,    0,  284,    2, 0x02,   63 /* Public */,
      44,    0,  285,    2, 0x02,   64 /* Public */,
      45,    0,  286,    2, 0x02,   65 /* Public */,
      46,    1,  287,    2, 0x02,   66 /* Public */,
      48,    1,  290,    2, 0x02,   68 /* Public */,
      49,    1,  293,    2, 0x02,   70 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // methods: parameters
    QMetaType::Void,
    QMetaType::Int,
    QMetaType::Void, QMetaType::QVariantList, QMetaType::QVariantList, QMetaType::QVariantList, QMetaType::QVariantList, QMetaType::QVariantList,   21,   22,   23,   24,   25,
    QMetaType::Void, QMetaType::QVariantList, QMetaType::QVariantList, QMetaType::QVariantList, QMetaType::QVariantList, QMetaType::QVariantList, 0x80000000 | 27,   21,   22,   23,   24,   25,   28,
    QMetaType::QString, QMetaType::Int,   30,
    QMetaType::Void, QMetaType::Int,   32,
    QMetaType::Void, QMetaType::Int,   32,
    QMetaType::Void, QMetaType::QVariantList,   35,
    QMetaType::Void, QMetaType::QVariantList, QMetaType::QVariantList, QMetaType::QVariantList, QMetaType::Double,   35,   37,   38,   39,
    QMetaType::Int,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Int,
    QMetaType::QString, QMetaType::Int,   47,
    QMetaType::QString, QMetaType::Int,   47,
    QMetaType::Void, QMetaType::Int,   47,

 // properties: name, type, flags
      50, QMetaType::Double, 0x00015803, uint(0), 0,
      51, QMetaType::Double, 0x00015903, uint(1), 0,
      52, QMetaType::Int, 0x00015803, uint(14), 0,
      21, QMetaType::QVariantList, 0x00015001, uint(2), 0,
      22, QMetaType::QVariantList, 0x00015001, uint(3), 0,
      23, QMetaType::QVariantList, 0x00015001, uint(4), 0,
      24, QMetaType::QVariantList, 0x00015001, uint(5), 0,
      25, QMetaType::QVariantList, 0x00015001, uint(6), 0,
      35, QMetaType::QVariantList, 0x00015001, uint(7), 0,
      39, QMetaType::Double, 0x00015803, uint(11), 0,
      37, QMetaType::QVariantList, 0x00015001, uint(9), 0,
      38, QMetaType::QVariantList, 0x00015001, uint(10), 0,
      53, QMetaType::Double, 0x00015003, uint(12), 0,
      54, QMetaType::QVariantList, 0x00015001, uint(13), 0,
      55, QMetaType::QVariantList, 0x00015001, uint(15), 0,

       0        // eod
};

Q_CONSTINIT const QMetaObject slot_machine::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_CLASSslot_machineENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSslot_machineENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_CLASSslot_machineENDCLASS_t,
        // property 'sum'
        QtPrivate::TypeAndForceComplete<double, std::true_type>,
        // property 'bet'
        QtPrivate::TypeAndForceComplete<double, std::true_type>,
        // property 'chance50'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'ireel1'
        QtPrivate::TypeAndForceComplete<QVariantList, std::true_type>,
        // property 'ireel2'
        QtPrivate::TypeAndForceComplete<QVariantList, std::true_type>,
        // property 'ireel3'
        QtPrivate::TypeAndForceComplete<QVariantList, std::true_type>,
        // property 'ireel4'
        QtPrivate::TypeAndForceComplete<QVariantList, std::true_type>,
        // property 'ireel5'
        QtPrivate::TypeAndForceComplete<QVariantList, std::true_type>,
        // property 'a'
        QtPrivate::TypeAndForceComplete<QVariantList, std::true_type>,
        // property 'sumwon'
        QtPrivate::TypeAndForceComplete<double, std::true_type>,
        // property 'winscomb'
        QtPrivate::TypeAndForceComplete<QVariantList, std::true_type>,
        // property 'scatter'
        QtPrivate::TypeAndForceComplete<QVariantList, std::true_type>,
        // property 'lastwin'
        QtPrivate::TypeAndForceComplete<double, std::true_type>,
        // property 'highl'
        QtPrivate::TypeAndForceComplete<QVariantList, std::true_type>,
        // property 'history'
        QtPrivate::TypeAndForceComplete<QVariantList, std::true_type>,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<slot_machine, std::true_type>,
        // method 'SUMChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'betChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'ireel1Changed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'ireel2Changed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'ireel3Changed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'ireel4Changed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'ireel5Changed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'aChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'winChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'winscombChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'scatterChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'sumwonChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'lastwinChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'highlChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'chance50Changed'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'historyChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'substractBet'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'canPlaceBet'
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'randomfind'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QVariantList, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QVariantList, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QVariantList, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QVariantList, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QVariantList, std::false_type>,
        // method 'create_reels'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QVariantList &, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QVariantList &, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QVariantList &, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QVariantList &, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QVariantList &, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'getImagePath'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'delayimages'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'getreels'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'getwins'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QVariantList, std::false_type>,
        // method 'calcwins'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QVariantList, std::false_type>,
        QtPrivate::TypeAndForceComplete<QVariantList, std::false_type>,
        QtPrivate::TypeAndForceComplete<QVariantList, std::false_type>,
        QtPrivate::TypeAndForceComplete<double, std::false_type>,
        // method 'is0'
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'lastwincalc'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'calcsquares'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'resetsquares'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'generate50'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'findnrdoublings'
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'getimagecard'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'getimagehistory'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'updatehistory'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>
    >,
    nullptr
} };

void slot_machine::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<slot_machine *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->SUMChanged(); break;
        case 1: _t->betChanged(); break;
        case 2: _t->ireel1Changed(); break;
        case 3: _t->ireel2Changed(); break;
        case 4: _t->ireel3Changed(); break;
        case 5: _t->ireel4Changed(); break;
        case 6: _t->ireel5Changed(); break;
        case 7: _t->aChanged(); break;
        case 8: _t->winChanged(); break;
        case 9: _t->winscombChanged(); break;
        case 10: _t->scatterChanged(); break;
        case 11: _t->sumwonChanged(); break;
        case 12: _t->lastwinChanged(); break;
        case 13: _t->highlChanged(); break;
        case 14: _t->chance50Changed(); break;
        case 15: _t->historyChanged(); break;
        case 16: _t->substractBet(); break;
        case 17: { int _r = _t->canPlaceBet();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 18: _t->randomfind((*reinterpret_cast< std::add_pointer_t<QVariantList>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QVariantList>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<QVariantList>>(_a[3])),(*reinterpret_cast< std::add_pointer_t<QVariantList>>(_a[4])),(*reinterpret_cast< std::add_pointer_t<QVariantList>>(_a[5]))); break;
        case 19: _t->create_reels((*reinterpret_cast< std::add_pointer_t<QVariantList>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QVariantList>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<QVariantList>>(_a[3])),(*reinterpret_cast< std::add_pointer_t<QVariantList>>(_a[4])),(*reinterpret_cast< std::add_pointer_t<QVariantList>>(_a[5])),(*reinterpret_cast< std::add_pointer_t<int[5][23]>>(_a[6]))); break;
        case 20: { QString _r = _t->getImagePath((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 21: _t->delayimages((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        case 22: _t->getreels((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        case 23: _t->getwins((*reinterpret_cast< std::add_pointer_t<QVariantList>>(_a[1]))); break;
        case 24: _t->calcwins((*reinterpret_cast< std::add_pointer_t<QVariantList>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QVariantList>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<QVariantList>>(_a[3])),(*reinterpret_cast< std::add_pointer_t<double>>(_a[4]))); break;
        case 25: { int _r = _t->is0();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 26: _t->lastwincalc(); break;
        case 27: _t->calcsquares(); break;
        case 28: _t->resetsquares(); break;
        case 29: _t->generate50(); break;
        case 30: { int _r = _t->findnrdoublings();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 31: { QString _r = _t->getimagecard((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 32: { QString _r = _t->getimagehistory((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 33: _t->updatehistory((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (slot_machine::*)();
            if (_t _q_method = &slot_machine::SUMChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (slot_machine::*)();
            if (_t _q_method = &slot_machine::betChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (slot_machine::*)();
            if (_t _q_method = &slot_machine::ireel1Changed; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (slot_machine::*)();
            if (_t _q_method = &slot_machine::ireel2Changed; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (slot_machine::*)();
            if (_t _q_method = &slot_machine::ireel3Changed; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (slot_machine::*)();
            if (_t _q_method = &slot_machine::ireel4Changed; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 5;
                return;
            }
        }
        {
            using _t = void (slot_machine::*)();
            if (_t _q_method = &slot_machine::ireel5Changed; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 6;
                return;
            }
        }
        {
            using _t = void (slot_machine::*)();
            if (_t _q_method = &slot_machine::aChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 7;
                return;
            }
        }
        {
            using _t = void (slot_machine::*)();
            if (_t _q_method = &slot_machine::winChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 8;
                return;
            }
        }
        {
            using _t = void (slot_machine::*)();
            if (_t _q_method = &slot_machine::winscombChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 9;
                return;
            }
        }
        {
            using _t = void (slot_machine::*)();
            if (_t _q_method = &slot_machine::scatterChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 10;
                return;
            }
        }
        {
            using _t = void (slot_machine::*)();
            if (_t _q_method = &slot_machine::sumwonChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 11;
                return;
            }
        }
        {
            using _t = void (slot_machine::*)();
            if (_t _q_method = &slot_machine::lastwinChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 12;
                return;
            }
        }
        {
            using _t = void (slot_machine::*)();
            if (_t _q_method = &slot_machine::highlChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 13;
                return;
            }
        }
        {
            using _t = void (slot_machine::*)();
            if (_t _q_method = &slot_machine::chance50Changed; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 14;
                return;
            }
        }
        {
            using _t = void (slot_machine::*)();
            if (_t _q_method = &slot_machine::historyChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 15;
                return;
            }
        }
    } else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<slot_machine *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< double*>(_v) = _t->readSUM(); break;
        case 1: *reinterpret_cast< double*>(_v) = _t->readbet(); break;
        case 2: *reinterpret_cast< int*>(_v) = _t->readchance50(); break;
        case 3: *reinterpret_cast< QVariantList*>(_v) = _t->getireel1(); break;
        case 4: *reinterpret_cast< QVariantList*>(_v) = _t->getireel2(); break;
        case 5: *reinterpret_cast< QVariantList*>(_v) = _t->getireel3(); break;
        case 6: *reinterpret_cast< QVariantList*>(_v) = _t->getireel4(); break;
        case 7: *reinterpret_cast< QVariantList*>(_v) = _t->getireel5(); break;
        case 8: *reinterpret_cast< QVariantList*>(_v) = _t->geta(); break;
        case 9: *reinterpret_cast< double*>(_v) = _t->readsumwon(); break;
        case 10: *reinterpret_cast< QVariantList*>(_v) = _t->getwinscomb(); break;
        case 11: *reinterpret_cast< QVariantList*>(_v) = _t->getscatter(); break;
        case 12: *reinterpret_cast< double*>(_v) = _t->readlastwin(); break;
        case 13: *reinterpret_cast< QVariantList*>(_v) = _t->gethighl(); break;
        case 14: *reinterpret_cast< QVariantList*>(_v) = _t->gethistory(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<slot_machine *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setSUM(*reinterpret_cast< double*>(_v)); break;
        case 1: _t->setBet(*reinterpret_cast< double*>(_v)); break;
        case 2: _t->setchance50(*reinterpret_cast< int*>(_v)); break;
        case 9: _t->setsumwon(*reinterpret_cast< double*>(_v)); break;
        case 12: _t->setlastwin(*reinterpret_cast< double*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
}

const QMetaObject *slot_machine::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *slot_machine::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSslot_machineENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int slot_machine::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 34)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 34;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 34)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 34;
    }else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 15;
    }
    return _id;
}

// SIGNAL 0
void slot_machine::SUMChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void slot_machine::betChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void slot_machine::ireel1Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void slot_machine::ireel2Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void slot_machine::ireel3Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}

// SIGNAL 5
void slot_machine::ireel4Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}

// SIGNAL 6
void slot_machine::ireel5Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 6, nullptr);
}

// SIGNAL 7
void slot_machine::aChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 7, nullptr);
}

// SIGNAL 8
void slot_machine::winChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 8, nullptr);
}

// SIGNAL 9
void slot_machine::winscombChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 9, nullptr);
}

// SIGNAL 10
void slot_machine::scatterChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 10, nullptr);
}

// SIGNAL 11
void slot_machine::sumwonChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 11, nullptr);
}

// SIGNAL 12
void slot_machine::lastwinChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 12, nullptr);
}

// SIGNAL 13
void slot_machine::highlChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 13, nullptr);
}

// SIGNAL 14
void slot_machine::chance50Changed()
{
    QMetaObject::activate(this, &staticMetaObject, 14, nullptr);
}

// SIGNAL 15
void slot_machine::historyChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 15, nullptr);
}
QT_WARNING_POP
