.class public Lcom/android/sidekick/InputHistoryAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "InputHistoryAdapter.java"


# instance fields
.field private final DEFAULT_PERSIST_FILE:Ljava/lang/String;

.field private mCalendar:Ljava/util/Calendar;

.field mContext:Landroid/app/Activity;

.field private mDays:[Ljava/lang/Object;

.field private mHistories:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/sidekick/InputHistoryAdapter;->mContext:Landroid/app/Activity;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/sidekick/InputHistoryAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "input_history.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sidekick/InputHistoryAdapter;->DEFAULT_PERSIST_FILE:Ljava/lang/String;

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sidekick/InputHistoryAdapter;->mCalendar:Ljava/util/Calendar;

    .line 37
    return-void
.end method

.method private getCurrentDayID()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private getGroupLabel(I)Ljava/lang/CharSequence;
    .locals 8
    .parameter "groupPosition"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/sidekick/InputHistoryAdapter;->getCurrentDayID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 104
    .local v0, today:J
    iget-object v2, p0, Lcom/android/sidekick/InputHistoryAdapter;->mDays:[Ljava/lang/Object;

    aget-object v2, v2, p1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/android/sidekick/InputHistoryAdapter;->mContext:Landroid/app/Activity;

    const v3, 0x7f07001a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    :goto_0
    return-object v2

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/android/sidekick/InputHistoryAdapter;->mDays:[Ljava/lang/Object;

    aget-object v2, v2, p1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/sidekick/InputHistoryAdapter;->mContext:Landroid/app/Activity;

    const v3, 0x7f07001b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 109
    :cond_1
    iget-object v3, p0, Lcom/android/sidekick/InputHistoryAdapter;->mCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/sidekick/InputHistoryAdapter;->mDays:[Ljava/lang/Object;

    aget-object v2, v2, p1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 110
    const-string v2, "yyyy-MM-dd"

    iget-object v3, p0, Lcom/android/sidekick/InputHistoryAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method addHistory(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "history"

    .prologue
    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/android/sidekick/InputHistoryAdapter;->DEFAULT_PERSIST_FILE:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/sidekick/SimpleParcelFile;->newAppendWriter(Ljava/lang/String;)Lcom/android/sidekick/SimpleParcelFile$Writer;

    move-result-object v1

    .line 173
    .local v1, writer:Lcom/android/sidekick/SimpleParcelFile$Writer;
    invoke-direct {p0}, Lcom/android/sidekick/InputHistoryAdapter;->getCurrentDayID()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/sidekick/SimpleParcelFile$Writer;->putLong(J)V

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/sidekick/SimpleParcelFile$Writer;->putString(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1}, Lcom/android/sidekick/SimpleParcelFile$Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1           #writer:Lcom/android/sidekick/SimpleParcelFile$Writer;
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 177
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearHistory()V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/sidekick/InputHistoryAdapter;->DEFAULT_PERSIST_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 184
    invoke-virtual {p0}, Lcom/android/sidekick/InputHistoryAdapter;->destory()V

    .line 185
    invoke-virtual {p0}, Lcom/android/sidekick/InputHistoryAdapter;->notifyDataSetChanged()V

    .line 186
    return-void
.end method

.method destory()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/android/sidekick/InputHistoryAdapter;->mDays:[Ljava/lang/Object;

    .line 163
    iput-object v0, p0, Lcom/android/sidekick/InputHistoryAdapter;->mHistories:[Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getChildLabel(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/sidekick/InputHistoryAdapter;->getHistoryByPos(I)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 117
    if-nez p4, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/sidekick/InputHistoryAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 120
    :cond_0
    const v1, 0x7f090008

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    .local v0, label:Landroid/widget/TextView;
    invoke-virtual {p0, p1, p2}, Lcom/android/sidekick/InputHistoryAdapter;->getChildLabel(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/sidekick/InputHistoryAdapter;->mHistories:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/sidekick/InputHistoryAdapter;->getHistoryByPos(I)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/sidekick/InputHistoryAdapter;->mDays:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/sidekick/InputHistoryAdapter;->mDays:[Ljava/lang/Object;

    array-length v0, v0

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 67
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 83
    if-nez p3, :cond_0

    .line 84
    iget-object v2, p0, Lcom/android/sidekick/InputHistoryAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 86
    :cond_0
    const v2, 0x7f090007

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 87
    .local v0, indicator:Landroid/widget/ImageView;
    if-eqz p2, :cond_1

    .line 88
    const v2, 0x7f020007

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    :goto_0
    const v2, 0x7f090008

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    .local v1, label:Landroid/widget/TextView;
    invoke-direct {p0, p1}, Lcom/android/sidekick/InputHistoryAdapter;->getGroupLabel(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-object p3

    .line 90
    .end local v1           #label:Landroid/widget/TextView;
    :cond_1
    const v2, 0x7f020008

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public getHistoryByPos(I)Ljava/util/LinkedList;
    .locals 1
    .parameter "pos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/sidekick/InputHistoryAdapter;->mHistories:[Ljava/lang/Object;

    aget-object p0, v0, p1

    .end local p0
    check-cast p0, Ljava/util/LinkedList;

    return-object p0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method loadHistory()V
    .locals 7

    .prologue
    .line 135
    const/4 v3, 0x0

    .line 137
    .local v3, store:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/sidekick/InputHistoryAdapter;->DEFAULT_PERSIST_FILE:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/sidekick/SimpleParcelFile;->newReader(Ljava/lang/String;)Lcom/android/sidekick/SimpleParcelFile$Reader;

    move-result-object v2

    .line 138
    .local v2, reader:Lcom/android/sidekick/SimpleParcelFile$Reader;
    new-instance v4, Ljava/util/TreeMap;

    new-instance v5, Lcom/android/sidekick/InputHistoryAdapter$1;

    invoke-direct {v5, p0}, Lcom/android/sidekick/InputHistoryAdapter$1;-><init>(Lcom/android/sidekick/InputHistoryAdapter;)V

    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    .end local v3           #store:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    .local v4, store:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lcom/android/sidekick/SimpleParcelFile$Reader;->getLong()J

    move-result-wide v0

    .line 146
    .local v0, day:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 147
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    invoke-virtual {v2}, Lcom/android/sidekick/SimpleParcelFile$Reader;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 151
    .end local v0           #day:J
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 155
    .end local v2           #reader:Lcom/android/sidekick/SimpleParcelFile$Reader;
    .end local v4           #store:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    .restart local v3       #store:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    :goto_1
    if-eqz v3, :cond_1

    .line 156
    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/android/sidekick/InputHistoryAdapter;->mDays:[Ljava/lang/Object;

    .line 157
    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/android/sidekick/InputHistoryAdapter;->mHistories:[Ljava/lang/Object;

    .line 159
    :cond_1
    return-void

    .line 153
    :catch_1
    move-exception v5

    goto :goto_1

    .end local v3           #store:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    .restart local v2       #reader:Lcom/android/sidekick/SimpleParcelFile$Reader;
    .restart local v4       #store:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4           #store:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    .restart local v3       #store:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    goto :goto_1

    .line 152
    .end local v2           #reader:Lcom/android/sidekick/SimpleParcelFile$Reader;
    :catch_3
    move-exception v5

    goto :goto_1

    .end local v3           #store:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    .restart local v2       #reader:Lcom/android/sidekick/SimpleParcelFile$Reader;
    .restart local v4       #store:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    :catch_4
    move-exception v5

    move-object v3, v4

    .end local v4           #store:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    .restart local v3       #store:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    goto :goto_1

    .line 151
    .end local v2           #reader:Lcom/android/sidekick/SimpleParcelFile$Reader;
    :catch_5
    move-exception v5

    goto :goto_1
.end method
