/*

Copyright (c) 2003-2008 uim Project http://code.google.com/p/uim/

All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

1. Redistributions of source code must retain the above copyright
notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.
3. Neither the name of authors nor the names of its contributors
may be used to endorse or promote products derived from this software
without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS ``AS IS'' AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
SUCH DAMAGE.

*/
#ifndef CANDIDATE_WINDOW_H
#define CANDIDATE_WINDOW_H

#include <uim/uim.h>

#include <Q3VBox>
#include <Q3ListView>
#include <Q3ValueList>
#include <qevent.h>
#include <qfontmetrics.h>

class QLabel;

class QUimInputContext;
class CandidateListView;
class SubWindow;

class CandidateWindow : public Q3VBox
{
    Q_OBJECT

public:
    CandidateWindow( QWidget *parent, const char * name = 0 );
    ~CandidateWindow();

    void activateCandwin( int dLimit );
    void deactivateCandwin();
    void clearCandidates();
    void popup();

    void setAlwaysLeftPosition( bool left ) { isAlwaysLeft = left; }
    bool isAlwaysLeftPosition() const { return isAlwaysLeft; }

    void setCandidates( int displayLimit, const Q3ValueList<uim_candidate> &candidates );
    void setPage( int page );
    void shiftPage( bool forward );
    void layoutWindow( int x, int y, int w, int h );
    void setIndex( int totalindex );
    void setIndexInPage( int index );

    void setQUimInputContext( QUimInputContext* m_ic ) { ic = m_ic; }

    QSize sizeHint(void) const;

protected slots:
    void slotCandidateSelected( Q3ListViewItem* );
    void slotHookSubwindow( Q3ListViewItem* );

protected:
    void updateLabel();

    // Moving and Resizing affects the positon of Subwindow
    virtual void moveEvent( QMoveEvent * );
    virtual void resizeEvent( QResizeEvent * );

    QUimInputContext *ic;

    CandidateListView *cList;
    QLabel *numLabel;

    Q3ValueList<uim_candidate> stores;

    int nrCandidates;
    int candidateIndex;
    int displayLimit;
    int pageIndex;

    bool isAlwaysLeft;

    SubWindow *subWin;
};


class CandidateListView : public Q3ListView
{
    Q_OBJECT

public:
    CandidateListView( QWidget *parent, const char *name = 0, Qt::WFlags f = 0 ) : Q3ListView( parent, name, f ) {}
    ~CandidateListView() {}

    int itemIndex( const Q3ListViewItem *item ) const
    {
        if ( !item )
            return -1;
        if ( item == firstChild() )
            return 0;
        else
        {
            Q3ListViewItemIterator it( firstChild() );
            uint j = 0;
            for ( ; it.current() && it.current() != item; ++it, ++j )
                ;
            if ( !it.current() )
                return -1;
            return j;
        }
    }

    Q3ListViewItem* itemAtIndex( int index ) const
    {
        if ( index < 0 )
            return 0;
        int j = 0;
        for ( Q3ListViewItemIterator it = firstChild(); it.current(); ++it )
        {
            if ( j == index )
                return it.current();
            j++;
        }

        return 0;
    }

    QSize sizeHint( void ) const;
};
#endif /* Not def: CANDIDATE_WINDOW_H */
