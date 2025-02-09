#ifndef SLOT_MACHINE_H
#define SLOT_MACHINE_H
#include <QVariantList>
#include <QTimer>
#include <QObject>
//alt enter
class slot_machine : public QObject
{
    Q_OBJECT
//alt enter
    Q_PROPERTY(double sum READ readSUM WRITE setSUM NOTIFY SUMChanged FINAL)
    Q_PROPERTY(double bet READ readbet WRITE setBet NOTIFY betChanged FINAL)
    Q_PROPERTY(int chance50 READ readchance50 WRITE setchance50 NOTIFY chance50Changed FINAL) //sets the random card when doing 50/50
    Q_PROPERTY(QVariantList ireel1 READ getireel1 NOTIFY ireel1Changed)
    Q_PROPERTY(QVariantList ireel2 READ getireel2 NOTIFY ireel2Changed)
    Q_PROPERTY(QVariantList ireel3 READ getireel3 NOTIFY ireel3Changed)
    Q_PROPERTY(QVariantList ireel4 READ getireel4 NOTIFY ireel4Changed)
    Q_PROPERTY(QVariantList ireel5 READ getireel5 NOTIFY ireel5Changed)
    Q_PROPERTY(QVariantList a READ geta NOTIFY aChanged)
    Q_PROPERTY(double sumwon READ readsumwon WRITE setsumwon NOTIFY sumwonChanged FINAL)
    Q_PROPERTY(QVariantList winscomb READ getwinscomb  NOTIFY winscombChanged) //vector for the line winning combinstions and scatters 18 total 0 if there isnt, 1 if there is
    Q_PROPERTY(QVariantList scatter READ getscatter  NOTIFY scatterChanged) //contaisn the positions of the scatters in the initial matrix
    Q_PROPERTY(double lastwin READ readlastwin WRITE setlastwin NOTIFY lastwinChanged)
    Q_PROPERTY(QVariantList highl READ gethighl NOTIFY highlChanged)//set on 1 when the good winncombss are present or to 0 and use it as highl[i] for each cell to highlight it at the final of the timer
                                                                    //make a function to reset to 0 all when start spinning
    Q_PROPERTY(QVariantList history READ gethistory NOTIFY historyChanged) //5elements vector that holds the last 5 colors that have been during doublings





public:
    explicit slot_machine(QObject *parent = nullptr);

    double readSUM() const;
    void setSUM(double newSum);

    double readbet() const;
    void setBet(double newBet); //add here the custom functions

    Q_INVOKABLE void substractBet();
    Q_INVOKABLE int canPlaceBet();
    Q_INVOKABLE void randomfind(const QVariantList ireel1,const QVariantList ireel2,const QVariantList ireel3,const QVariantList ireel4,const QVariantList ireel5);
    Q_INVOKABLE void create_reels(const QVariantList &ireel1,const QVariantList &ireel2,const QVariantList &ireel3,const QVariantList &ireel4,const QVariantList &ireel5,int b[5][23]);
    Q_INVOKABLE QString getImagePath(int number) const;
    Q_INVOKABLE void delayimages(int nr);
    Q_INVOKABLE void getreels(int nr);
    Q_INVOKABLE void getwins(QVariantList a);
    Q_INVOKABLE void calcwins(QVariantList a, QVariantList winscomb, QVariantList scatter,double sumwon);
    Q_INVOKABLE int is0();
    Q_INVOKABLE void lastwincalc();
    Q_INVOKABLE void calcsquares();
    Q_INVOKABLE void resetsquares();
    Q_INVOKABLE void generate50();
    Q_INVOKABLE int findnrdoublings();
    Q_INVOKABLE QString getimagecard(int index);
    Q_INVOKABLE QString getimagehistory(int index);
    Q_INVOKABLE void updatehistory(int index);



    QVariantList getireel1() const;

    QVariantList getireel2() const;

    QVariantList getireel3() const;

    QVariantList getireel4() const;

    QVariantList getireel5() const;

    QVariantList geta() const;


    QVariantList getwinscomb() const;
    void setwinscomb(const QVariantList &newWinscomb);

    QVariantList getscatter() const;
    void setscatter(const QVariantList &newScatter);

    double readwinn() const;
    void setwinn(double newWinn);

    double readsumwon() const;
    void setsumwon(double newSumwon);

    double readlastwin() const;
    void setlastwin(double newLastwin);

    QVariantList gethighl() const;

    int readchance50() const;
    void setchance50(int newChance50);

    QVariantList gethistory() const;

signals:
    void SUMChanged();
    void betChanged();




    void ireel1Changed();

    void ireel2Changed();

    void ireel3Changed();

    void ireel4Changed();

    void ireel5Changed();

    void aChanged();


    void winChanged();

    void winscombChanged();

    void scatterChanged();



    void sumwonChanged();

    void lastwinChanged();

    void highlChanged();

    void chance50Changed();

    void historyChanged();

private slots:




private:
    double m_sum=50.0;
    double m_bet=1.0;
    QVariantList m_ireel1={1,4,7,4,8,7,6,7,2,4,7,5,3,4,7,2,6,5,5,3,6,5,6};
    QVariantList m_ireel2={8,5,6,6,1,5,4,7,3,5,4,3,4,6,2,7,5,6,7,6,7,2,4};
    QVariantList m_ireel3={1,6,5,6,2,5,8,6,5,4,7,4,2,6,7,5,3,4,7,7,5,4,3};
    QVariantList m_ireel4={2,4,6,6,3,4,6,6,1,7,7,8,4,5,4,7,3,4,5,2,5,7,5};
    QVariantList m_ireel5={3,4,6,5,1,6,5,8,5,7,7,2,3,4,5,6,2,6,4,3,7,4,2};
    QVariantList m_a={1,2,3,4,5,6,7,8,2,5,6,7,4,3,6};//matrix that holds the elements first 5 elements=first row


    QVariantList m_winscomb={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    QVariantList m_scatter={15,15,15,15,15};
    double m_sumwon=0.0;
    double m_lastwin;
    QVariantList m_highl={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    int m_chance50=3;
    QVariantList m_history={3,3,3,3,3};//0-black, 1-red,2-undecided,3-grey,
};

#endif // SLOT_MACHINE_H
