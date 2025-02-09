#include "slot_machine.h"
#include <QtDebug>
#include <QVariantList>
#include <cstdlib>
#include <ctime>

slot_machine::slot_machine(QObject *parent)
    : QObject{parent}
{}

double slot_machine::readSUM() const
{
    return m_sum;
}

void slot_machine::setSUM(double newSum)
{
    if (qFuzzyCompare(m_sum, newSum))
        return;
    m_sum = newSum;
    emit SUMChanged();
}

double slot_machine::readbet() const
{
    return m_bet;
}

void slot_machine::setBet(double newBet)
{
    if (qFuzzyCompare(m_bet, newBet))
        return;
    m_bet = newBet;
    emit betChanged();
}

void slot_machine::substractBet()//function to substract the bet amount from the 'deposited' sum
{
    if (m_bet <= m_sum) {
        m_sum -= m_bet;
        emit SUMChanged();
    } else {

        qWarning("Bet amount exceeds the current sum");
    }
}

int slot_machine::canPlaceBet() {//checks if there is enough balance to place a bet
    if (m_bet<=m_sum)
        return 1;
    else
        return 0;

}




QVariantList slot_machine::getireel1() const
{
    return m_ireel1;
}

QVariantList slot_machine::getireel2() const
{
    return m_ireel2;
}

QVariantList slot_machine::getireel3() const
{
    return m_ireel3;
}

QVariantList slot_machine::getireel4() const
{
    return m_ireel4;
}

QVariantList slot_machine::getireel5() const
{
    return m_ireel5;
}
QVariantList slot_machine::geta() const
{
    return m_a;
}

QVariantList slot_machine::getwinscomb() const
{
    return m_winscomb;
}

void slot_machine::setwinscomb(const QVariantList &newWinscomb)
{
    if (m_winscomb == newWinscomb)
        return;
    m_winscomb = newWinscomb;
    emit winscombChanged();
}

QVariantList slot_machine::getscatter() const
{
    return m_scatter;
}

void slot_machine::setscatter(const QVariantList &newScatter)
{
    if (m_scatter == newScatter)
        return;
    m_scatter = newScatter;
    emit scatterChanged();
}


void slot_machine::randomfind(const QVariantList ireel1,const QVariantList ireel2,const QVariantList ireel3,const QVariantList ireel4,const QVariantList ireel5)
{int v1[23],v2[23],v3[23],v4[23],v5[23];
    if (ireel1.size() != 23 || ireel2.size() != 23 || ireel3.size() != 23 || ireel4.size() != 23 || ireel5.size() != 23) {
        qWarning() << "One of the reels does not have 23 elements.";
        return;
    }

    for (int i = 0; i <=22; ++i) {
        v1[i]=ireel1[i].toInt();
        v2[i]=ireel2[i].toInt();
        v3[i]=ireel3[i].toInt();
        v4[i]=ireel4[i].toInt();
        v5[i]=ireel5[i].toInt();
    }
    int v[5]={9,9,9,9,9};
    int aa[3][5];
    srand(static_cast<unsigned>(time(0))); // Use static_cast for time seed
    int b[5][23];
    create_reels(ireel1,ireel2,ireel3,ireel4,ireel5,b);
    int lower=0;//upper and lower bounds that hold all the symbols of the predefined reels
    int upper=22;
    for (int i=0;i<5;i++)
    {        int num = (rand() % (upper - lower + 1)) + lower;
        v[i]=num;
        qDebug()<<num<<"\n";

    }
    int nr=0;

    for (int j=0; j<5; j++)
    {
        aa[1][j]=b[j][v[nr]];

        int nr1=v[nr]-1;
        int nr2=v[nr]+1;
        if (nr1==-1)
            nr1=22;
        if (nr2==23)
            nr2=0;
        aa[0][j]=b[j][nr1];
        aa[2][j]=b[j][nr2];
        // printf("//%dmid %dup %d down\\",v[nr],nr1,nr2 );
        nr++;
    }

//randomly generate 3 adjacent symbols for each reel from the predefined reels using the rand function
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 5; ++j) {
            m_a[i * 5 + j] = aa[i][j];
        }
    }
    emit aChanged();




}

void slot_machine::create_reels(const QVariantList &ireel1,const QVariantList &ireel2,const QVariantList &ireel3,const QVariantList &ireel4,const QVariantList &ireel5,int b[5][23])
{//create the reels for the matrix that holds all the 23*5 total symbols
    for (int i=0; i<23; i++)
        b[0][i]=ireel1[i].toInt();
    for (int i=0; i<23; i++)
        b[1][i]=ireel2[i].toInt();
    for (int i=0; i<23; i++)
        b[2][i]=ireel3[i].toInt();
    for (int i=0; i<23; i++)
        b[3][i]=ireel4[i].toInt();
    for (int i=0; i<23; i++)
        b[4][i]=ireel5[i].toInt();

}

QString slot_machine::getImagePath(int number) const//pathing from the numbers to the images coresponding to the symbols
{
    if (number==1)
        return "images/num7.png";
    else if (number==2)
        return "images/melon.png";
    else if (number==3)
        return "images/grapes.png";
    else if (number==4)
        return "images/orange.png";
    else if (number==5)
        return "images/lemons.png";
    else if (number==6)
        return "images/cherry.png";
    else if (number==7)
        return "images/prune.png";
    else if (number==8)
        return "images/starr.png";
    else
        return "images/stopp.png";


}

void slot_machine::delayimages(int nr)//function that works with a timer that goes fast through the randomized symbols to create the effect of spinning reels
{


    int upper=8;//there are 8 symbols encoded from 1 to 8
    int lower=1;
    int num ;
    if (nr==1)
    {num=(rand() % (upper - lower + 1)) + lower;

        m_a.replace(0,num);
        emit aChanged();
        num=(rand() % (upper - lower + 1)) + lower;
        m_a.replace(5,num);
        emit aChanged();
        num=(rand() % (upper - lower + 1)) + lower;
        m_a.replace(10,num);
        emit aChanged();

    }
    else if (nr==2)
    {num=(rand() % (upper - lower + 1)) + lower;
        m_a.replace(1,num);
        emit aChanged();
        num=(rand() % (upper - lower + 1)) + lower;
        m_a.replace(6,num);
        emit aChanged();
        num=(rand() % (upper - lower + 1)) + lower;
        m_a.replace(11,num);
        emit aChanged();
    }
    else if (nr==3)
    {num=(rand() % (upper - lower + 1)) + lower;
        m_a.replace(2,num);
        emit aChanged();
        num=(rand() % (upper - lower + 1)) + lower;
        m_a.replace(7,num);
        emit aChanged();
        num=(rand() % (upper - lower + 1)) + lower;
        m_a.replace(12,num);
        emit aChanged();
    }
    else if (nr==4)
    {num=(rand() % (upper - lower + 1)) + lower;
        m_a.replace(3,num);
        emit aChanged();
        num=(rand() % (upper - lower + 1)) + lower;
        m_a.replace(8,num);
        emit aChanged();
        num=(rand() % (upper - lower + 1)) + lower;
        m_a.replace(13,num);
        emit aChanged();
    }

    else if (nr==5)
    {num=(rand() % (upper - lower + 1)) + lower;
        m_a.replace(4,num);
        emit aChanged();
        num=(rand() % (upper - lower + 1)) + lower;
        m_a.replace(9,num);
        emit aChanged();
        num=(rand() % (upper - lower + 1)) + lower;
        m_a.replace(14,num);
        emit aChanged();

    }

}

void slot_machine::getreels(int nr)//de la 0 la 4 //function that generates the 3 adjacent symbols for each reel, when the spinning animation is done
{int lowerr=0;
    int middle=5;
    int downer=10;


    int v1[23],v2[23],v3[23],v4[23],v5[23];
    for (int i = 0; i <=22; ++i) {
        v1[i]=m_ireel1[i].toInt();
        v2[i]=m_ireel2[i].toInt();
        v3[i]=m_ireel3[i].toInt();
        v4[i]=m_ireel4[i].toInt();
        v5[i]=m_ireel5[i].toInt();
    }

    int aa[3][5];
    int b[5][23];
    create_reels(m_ireel1,m_ireel2,m_ireel3,m_ireel4,m_ireel5,b);
//create the matrix with all the symbols

    int nrrand=(rand() % (22 - 0 + 1));
 qDebug()<<nrrand<<"\n";
    int nrrandup=(nrrand - 1 + 23) % 23;
    int nrrandown=(nrrand+1)%23;
//replace in the matrix 'a' that holds the symbols that appear on the screen, with the randomized ones
    //replecing is done line by line, lowerr=first row, middle=second, downer=last row
    m_a.replace(lowerr+nr,b[nr][nrrandup]  ); //de pe linia nr,(0,4) care reprezinta relurile
    emit aChanged();
    m_a.replace(middle+nr,b[nr][nrrand] );
    emit aChanged();
    m_a.replace(downer+nr,b[nr][nrrandown] );
    emit aChanged();

}

void slot_machine::getwins(QVariantList a) {//check manyally if any of the lines has a winning combination and set as '1' if there is
    //the vector has a total of 18 elements to represent, the 3 possibilites of the 5 lines and the 3 scatter posibilites
    int v[15];
    for (int i = 0; i <= 17; i++) {
        m_winscomb[i] = 0;
    }
    for (int i=0;i<=4;i++)
        m_scatter[i]=16;
    for (int i = 0; i <= 14; i++) {
        v[i] = a[i].toInt();
        qDebug() << "i" << v[i];
    }

    // Line checks
    if (v[0] == v[1] && v[1] == v[2] && v[2] == v[3] && v[3] == v[4] && v[0] != 8) {
        m_winscomb[0] = 1;
    } else if (v[0] == v[1] && v[1] == v[2] && v[2] == v[3] && v[3] != v[4] && v[0] != 8) {
        m_winscomb[1] = 1;
    } else if (v[0] == v[1] && v[1] == v[2] && v[2] != v[3] && v[0] != 8) {
        m_winscomb[2] = 1;
    }

    if (v[5] == v[6] && v[6] == v[7] && v[7] == v[8] && v[8] == v[9] && v[5] != 8) {
        m_winscomb[3] = 1;
    } else if (v[5] == v[6] && v[6] == v[7] && v[7] == v[8] && v[8] != v[9] && v[5] != 8) {
        m_winscomb[4] = 1;
    } else if (v[5] == v[6] && v[6] == v[7] && v[7] != v[8] && v[5] != 8) {
        m_winscomb[5] = 1;
    }

    if (v[10] == v[11] && v[11] == v[12] && v[12] == v[13] && v[13] == v[14] && v[10] != 8) {
        m_winscomb[6] = 1;
    } else if (v[10] == v[11] && v[11] == v[12] && v[12] == v[13] && v[13] != v[14] && v[10] != 8) {
        m_winscomb[7] = 1;
    } else if (v[10] == v[11] && v[11] == v[12] && v[12] != v[13] && v[10] != 8) {
        m_winscomb[8] = 1;
    }

    if (v[0] == v[6] && v[6] == v[12] && v[12] == v[8] && v[8] == v[4] && v[0] != 8) {
        m_winscomb[9] = 1;
    } else if (v[0] == v[6] && v[6] == v[12] && v[12] == v[8] && v[8] != v[4] && v[0] != 8) {
        m_winscomb[10] = 1;
    } else if (v[0] == v[6] && v[6] == v[12] && v[12] != v[8] && v[0] != 8) {
        m_winscomb[11] = 1;
    }

    if (v[10] == v[6] && v[6] == v[2] && v[2] == v[8] && v[8] == v[14] && v[10] != 8) {
        m_winscomb[12] = 1;
    } else if (v[10] == v[6] && v[6] == v[2] && v[2] == v[8] && v[8] != v[14] && v[10] != 8) {
        m_winscomb[13] = 1;
    } else if (v[10] == v[6] && v[6] == v[2] && v[2] != v[8] && v[10] != 8) {
        m_winscomb[14] = 1;
    }
    int count=0;
    for (int i=0;i<=14;i++)
    {
        if (v[i]==8)
        {
            m_scatter[count]=i;
            count++;
        }
    }

    if (count==5)
        m_winscomb[15]=1;
    else if (count==4)
        m_winscomb[16]=1;
    else if (count==3)
        m_winscomb[17]=1;

    emit scatterChanged();
    emit winscombChanged();
}

void slot_machine::calcwins(QVariantList a, QVariantList winscomb, QVariantList scatter,double sumwon)//function for adding the wins together
{//after you get the wins, you calculate the amount won, based on what the symbols is
    //'a' holds the symbols, check which is the symbol and put it on nrforswitch

    getwins(a);//get the 1s for the matching symbols on the predefined lines, eg get winscomb set up
    sumwon=0.0;
    for (int i=0;i<=14;i++)//the 'i' index goes at the same time through the symbols of the frontend table and on the vector that holds the winning combinations
    {int nrforswitch;//the 1st line has the same symbol the element on a[0], which is the uppermost left cell
                        //the second has the element a[5],left middle elemeent, the 3rd has 1[10] which is the bottom left cell
                        //the 4th line, in 'v' has the first element in common, and the inverse v has the 10th elemen, the bottom left element
        switch(i)
        {
        case 0:
            nrforswitch=a[0].toInt();
            break;
        case 1:
            nrforswitch=a[0].toInt();
            break;
            case 2:
            nrforswitch=a[0].toInt();
            break;
            case 3:
                nrforswitch=a[5].toInt();
                break;
            case 4:
                nrforswitch=a[5].toInt();
                break;
            case 5:
                nrforswitch=a[5].toInt();
                break;
            case 6:
                nrforswitch=a[10].toInt();
                break;
            case 7:
                nrforswitch=a[10].toInt();
                break;
            case 8:
                nrforswitch=a[10].toInt();
                break;
            case 9:
                nrforswitch=a[0].toInt();
                break;
            case 10:
                nrforswitch=a[0].toInt();
                break;
            case 11:
                nrforswitch=a[0].toInt();
                break;
            case 12:
                nrforswitch=a[10].toInt();
                break;
            case 13:
                nrforswitch=a[10].toInt();
                break;
            case 14:
                nrforswitch=a[10].toInt();
                break;

        }
//there are 5 paying lines, and for each, the vector winscomb holds the 5,4,3 lines wins
        //the 5ofakind wins are put in the  0,3,6,9,12 indexes of the vector
        //4ofakind are put in 1,4,7,,10,13
        //3ofakind are put in 2,5,8,11,14

        if (i%3==0 && m_winscomb[i]==1)//the 5line wins
        {                switch(nrforswitch)
            {
            case 1:
                sumwon=sumwon+m_bet*1000;
                break;
            case 2:
                sumwon=sumwon+m_bet*180;

                break;
            case 3:
                sumwon=sumwon+m_bet*180;

                break;

            case 4:
                sumwon=sumwon+m_bet*40;

                break;

            case 5:
                sumwon=sumwon+m_bet*40;

                break;

            case 6:
                sumwon=sumwon+m_bet*40;

                break;

            case 7:
                sumwon=sumwon+m_bet*50;

                break;

            }


        }
        else if (i%3==1 && m_winscomb[i]==1)//4line wins
        {                switch(nrforswitch)
            {
            case 1:
                sumwon=sumwon+m_bet*200;
                break;
            case 2:
                sumwon=sumwon+m_bet*120;

                break;
            case 3:
                sumwon=sumwon+m_bet*120;

                break;

            case 4:
                sumwon=sumwon+m_bet*10;

                break;

            case 5:
                sumwon=sumwon+m_bet*10;

                break;

            case 6:
                sumwon=sumwon+m_bet*10;

                break;

            case 7:
                sumwon=sumwon+m_bet*12;

                break;

            }

        }
        else if(i%3==2 && m_winscomb[i]==1)//3line wins
        {            switch(nrforswitch)
            {
            case 1:
                sumwon=sumwon+m_bet*80;
                break;
            case 2:
                sumwon=sumwon+m_bet*20;

                break;
            case 3:
                sumwon=sumwon+m_bet*20;

                break;

            case 4:
                sumwon=sumwon+m_bet*4;

                break;

            case 5:
                sumwon=sumwon+m_bet*3;

                break;

            case 6:
                sumwon=sumwon+m_bet*3;

                break;

            case 7:
                sumwon=sumwon+m_bet*3;

                break;

            }

        }

    }//scatter wins are put on 15,16,17 indexes of the vector
    if (m_winscomb[15]==1)
        sumwon=sumwon+m_bet*140;

    if (m_winscomb[16]==1)
        sumwon=sumwon+m_bet*6;

     if (m_winscomb[17]==1)
        sumwon=sumwon+m_bet*2;



    m_sumwon=sumwon;
        emit sumwonChanged();
   // m_sum=m_sum+sumwon; //add these to register the sumwon sum
    //emit SUMChanged();
}

int slot_machine::is0()
{if (m_sumwon==0.00)
        return 0;
    else
        return 1;

}

void slot_machine::lastwincalc()
{
    if (m_sumwon)
    {m_lastwin=m_sumwon;
        emit lastwinChanged();}


}

void slot_machine::calcsquares()//now based on the wins, you check, highl holds the value 1 if there is a win present or 0 if there isnt
//
{   getwins(m_a);
    int v[15];
    for (int i=0;i<=14;i++)
        v[i]=m_winscomb[i].toInt();

    if (v[0]==1)
    {m_highl[0]=1;
        m_highl[1]=1;
        m_highl[2]=1;
        m_highl[3]=1;
        m_highl[4]=1;
    }
    else if (v[1]==1)
    {m_highl[0]=1;
        m_highl[1]=1;
        m_highl[2]=1;
        m_highl[3]=1;


    }
    else if (v[2]==1)
    {
        m_highl[0]=1;
        m_highl[1]=1;
        m_highl[2]=1;
    }


    if (v[3]==1)
    {m_highl[5]=1;
        m_highl[6]=1;
        m_highl[7]=1;
        m_highl[8]=1;
        m_highl[9]=1;
    }
    else if (v[4]==1)
    {m_highl[5]=1;
        m_highl[6]=1;
        m_highl[7]=1;
        m_highl[8]=1;


    }
    else if (v[5]==1)
    {
        m_highl[5]=1;
        m_highl[6]=1;
        m_highl[7]=1;
    }


    if (v[6]==1)
    {m_highl[10]=1;
        m_highl[11]=1;
        m_highl[12]=1;
        m_highl[13]=1;
        m_highl[14]=1;
    }
    else if (v[7]==1)
    {m_highl[10]=1;
        m_highl[11]=1;
        m_highl[12]=1;
        m_highl[13]=1;


    }
    else if (v[8]==1)
    {
        m_highl[10]=1;
        m_highl[11]=1;
        m_highl[12]=1;
    }

    if (v[9]==1)
    {m_highl[0]=1;
        m_highl[6]=1;
        m_highl[12]=1;
        m_highl[8]=1;
        m_highl[4]=1;
    }
    else if (v[10]==1)
    {m_highl[0]=1;
        m_highl[6]=1;
        m_highl[12]=1;
        m_highl[8]=1;


    }
    else if (v[11]==1)
    {
        m_highl[0]=1;
        m_highl[6]=1;
        m_highl[12]=1;
    }



    if (v[12]==1)
    {m_highl[10]=1;
        m_highl[6]=1;
        m_highl[2]=1;
        m_highl[8]=1;
        m_highl[14]=1;
    }
    else if (v[13]==1)
    {m_highl[10]=1;
        m_highl[6]=1;
        m_highl[2]=1;
        m_highl[8]=1;


    }
    else if (v[14]==1)
    {
        m_highl[10]=1;
        m_highl[6]=1;
        m_highl[2]=1;
    }

    if (m_winscomb[15].toInt()==1)
    {m_highl[m_scatter[0].toInt()]=1;
        m_highl[m_scatter[1].toInt()]=1;
        m_highl[m_scatter[2].toInt()]=1;
        m_highl[m_scatter[3].toInt()]=1;
        m_highl[m_scatter[4].toInt()]=1;

    }
    else if (m_winscomb[16].toInt()==1)
    {m_highl[m_scatter[0].toInt()]=1;
        m_highl[m_scatter[1].toInt()]=1;
        m_highl[m_scatter[2].toInt()]=1;
        m_highl[m_scatter[3].toInt()]=1;

    }
    else if (m_winscomb[17].toInt()==1)
    {m_highl[m_scatter[0].toInt()]=1;
        m_highl[m_scatter[1].toInt()]=1;
        m_highl[m_scatter[2].toInt()]=1;

    }

    emit highlChanged();
}

void slot_machine::resetsquares()//reset highlighted squares after the spin
{
    for (int i=0;i<=14;i++)
        m_highl[i]=0;

    emit highlChanged();
}

void slot_machine::generate50()//function to generate the random 50 50 for the cards game
{srand(static_cast<unsigned>(time(0)));
    int nr=rand()%2;
    qDebug() << "nr: "<<nr;
    m_chance50=nr;
    emit chance50Changed();


}

int slot_machine::findnrdoublings()
{   //double only values up to 150x
    if (2*m_sumwon>=150*m_bet)
        return 1;
    else if(4*m_sumwon>=150*m_bet)
        return 2;
    else
        return 3;


}

QString slot_machine::getimagecard(int index)
{    if (index==1)
        return "images/redreverse.png";
    else if (index==2)
        return "images/blackreverse.png";
    else if (index==3)
        return "images/blackcard.png";
    else
        if (index==4)
        return "images/redcard.png";
    else
        return "images/blackreverse.png";

}

QString slot_machine::getimagehistory(int index)//number to image
{if (index==2)
        return "images/blackreverse.png";
    else if (index==0)
        return "images/blackcard.png";
    else if (index==1)
        return "images/redcard.png";
    else
        if (index==3)
            return "images/greyy.png";
        else
            return "images/blackreverse.png";

}

void slot_machine::updatehistory(int index)//update the images based on whats needed, insert an unclear, change something, and so on
{//put a timer that after some time will init updatehistory(1)
    if (index==1)//initialize reverse,greyx4
    {
        for (int i=4;i>=1;i--)
        {
            m_history[i]=m_history[i-1];
        }
        m_history[0]=2;
        emit historyChanged();


    }
    else if (index==2)//pressed next card
    {

    }
    else if (index==3)//got black
    {//for (int i=4;i>=1;i--)
        //{
         //   m_history[i]=m_history[i-1];
       // }
        m_history[0]=0;
        emit historyChanged();

    }
    else if (index==4) //got red
    {     //   for (int i=4;i>=1;i--)
        //{
          //  m_history[i]=m_history[i-1];
        //}
        m_history[0]=1;
        emit historyChanged();


    }
    else
    {

    }
}




double slot_machine::readsumwon() const
{
    return m_sumwon;
}

void slot_machine::setsumwon(double newSumwon)
{
    if (qFuzzyCompare(m_sumwon, newSumwon))
        return;
    m_sumwon = newSumwon;
    emit sumwonChanged();
}

double slot_machine::readlastwin() const
{
    return m_lastwin;
}

void slot_machine::setlastwin(double newLastwin)//function that holds the last winning value
{
    if (qFuzzyCompare(m_lastwin, newLastwin))
        return;
    m_lastwin = newLastwin;
    emit lastwinChanged();
}

QVariantList slot_machine::gethighl() const
{
    return m_highl;
}

int slot_machine::readchance50() const
{
    return m_chance50;
}

void slot_machine::setchance50(int newChance50)
{
    if (m_chance50 == newChance50)
        return;
    m_chance50 = newChance50;
    emit chance50Changed();
}

QVariantList slot_machine::gethistory() const
{
    return m_history;
}
