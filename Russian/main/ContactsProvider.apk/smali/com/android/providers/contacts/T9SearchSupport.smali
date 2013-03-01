.class public Lcom/android/providers/contacts/T9SearchSupport;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/T9SearchSupport$3;,
        Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;,
        Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;,
        Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;,
        Lcom/android/providers/contacts/T9SearchSupport$DataInsertingOperation;,
        Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;,
        Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;,
        Lcom/android/providers/contacts/T9SearchSupport$RawContactDeletingOperation;,
        Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;,
        Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;,
        Lcom/android/providers/contacts/T9SearchSupport$Operation;,
        Lcom/android/providers/contacts/T9SearchSupport$IdType;,
        Lcom/android/providers/contacts/T9SearchSupport$T9LookupTable;,
        Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;,
        Lcom/android/providers/contacts/T9SearchSupport$CachedResults;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;,
        Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;,
        Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;,
        Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    }
.end annotation


# static fields
.field private static final COLLATOR:Ljava/text/Collator;

.field private static final EMPTY_CURSOR:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

.field private static final NAMEQUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;

.field private static final NUMBERQUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;

.field private static sInstance:Lcom/android/providers/contacts/T9SearchSupport;

.field private static sPhoneMimeTypeId:J

.field private static sQueryT9ItemSql:Ljava/lang/String;

.field private static sSipMimeTypeId:J


# instance fields
.field private mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

.field private mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

.field private mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mInitializeLock:Ljava/lang/Object;

.field private mInitialized:Ljava/lang/Boolean;

.field private mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mNameSortedFlagArray:[Z

.field private mNameT9SearchItemListArray:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberSortedFlagArray:[Z

.field private mNumberT9SearchItemListArray:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

.field mPendingOperations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$Operation;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mSorted:Z

.field private mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1148
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->COLLATOR:Ljava/text/Collator;

    .line 1153
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->NAMEQUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;

    .line 1158
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->NUMBERQUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;

    .line 1163
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Ljava/util/ArrayList;I)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->EMPTY_CURSOR:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    return-void
.end method

.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10
    .parameter "database"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xc

    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2659
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPendingOperations:Ljava/util/HashMap;

    .line 1418
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInitializeLock:Ljava/lang/Object;

    .line 1419
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInitialized:Ljava/lang/Boolean;

    .line 1421
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1424
    iput-boolean v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    .line 1426
    new-array v1, v5, [Ljava/util/ArrayList;

    check-cast v1, [Ljava/util/ArrayList;

    .line 1427
    .local v1, nameArray:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    new-array v3, v5, [Z

    iput-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameSortedFlagArray:[Z

    .line 1429
    new-array v2, v6, [Ljava/util/ArrayList;

    check-cast v2, [Ljava/util/ArrayList;

    .line 1430
    .local v2, numberArray:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    new-array v3, v6, [Z

    iput-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    .line 1431
    const/4 v0, 0x0

    .local v0, i:I
    :goto_34
    if-ge v0, v5, :cond_4f

    .line 1432
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v1, v0

    .line 1433
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    .line 1434
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameSortedFlagArray:[Z

    aput-boolean v4, v3, v0

    .line 1435
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aput-boolean v4, v3, v0

    .line 1431
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 1437
    :cond_4f
    const/16 v0, 0xa

    :goto_51
    if-ge v0, v6, :cond_61

    .line 1438
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    .line 1439
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aput-boolean v4, v3, v0

    .line 1437
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 1441
    :cond_61
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    .line 1442
    iput-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    .line 1445
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    invoke-direct {v3, v7}, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    iput-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    .line 1446
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    invoke-direct {v3, v7}, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    iput-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    .line 1448
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$1;

    invoke-direct {v3, p0}, Lcom/android/providers/contacts/T9SearchSupport$1;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    invoke-virtual {v3}, Lcom/android/providers/contacts/T9SearchSupport$1;->start()V

    .line 1456
    return-void
.end method

.method static synthetic access$000()Ljava/text/Collator;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->COLLATOR:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/providers/contacts/T9SearchSupport;Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->deleteItem(Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/providers/contacts/T9SearchSupport;Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/providers/contacts/T9SearchSupport;JLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/T9SearchSupport;->updateItem(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/providers/contacts/T9SearchSupport;JJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/T9SearchSupport;->updatePhotoId(JJ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/providers/contacts/T9SearchSupport;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->incTimesContacted(J)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;)Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/providers/contacts/T9SearchSupport;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->waitForInitialized()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/providers/contacts/T9SearchSupport;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/providers/contacts/T9SearchSupport;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->sortAllItems()V

    return-void
.end method

.method private addItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .registers 10
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    .line 1624
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v4, v4

    if-ge v1, v4, :cond_66

    .line 1626
    invoke-static {v1}, Lcom/android/providers/contacts/T9SearchSupport;->convertIndexToT9Char(I)C

    move-result v0

    .line 1629
    .local v0, digit:C
    iget-object v4, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2b

    .line 1630
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v4, v4, v1

    monitor-enter v4

    .line 1631
    :try_start_18
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v5, v5, v1

    new-instance v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    invoke-direct {v6, p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1632
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_60

    .line 1633
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aput-boolean v7, v4, v1

    .line 1634
    iput-boolean v7, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    .line 1637
    :cond_2b
    iget-object v4, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->converDigitToInitial(C)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1638
    .local v2, index:I
    if-ltz v2, :cond_5d

    .line 1639
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    invoke-direct {v3, p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 1641
    .local v3, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    iget-object v4, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/providers/contacts/T9SearchSupport;->calculateMatchedLevel(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedLevel:I

    .line 1642
    iget-object v4, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedChars:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    .line 1643
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v4, v4, v1

    monitor-enter v4

    .line 1644
    :try_start_4f
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v5, v5, v1

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1645
    monitor-exit v4
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_63

    .line 1646
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameSortedFlagArray:[Z

    aput-boolean v7, v4, v1

    .line 1647
    iput-boolean v7, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    .line 1624
    .end local v3           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1632
    .end local v2           #index:I
    :catchall_60
    move-exception v5

    :try_start_61
    monitor-exit v4
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v5

    .line 1645
    .restart local v2       #index:I
    .restart local v3       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    :catchall_63
    move-exception v5

    :try_start_64
    monitor-exit v4
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v5

    .line 1651
    .end local v0           #digit:C
    .end local v2           #index:I
    .end local v3           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    :cond_66
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v1, v4

    :goto_69
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v4, v4

    if-ge v1, v4, :cond_98

    .line 1653
    invoke-static {v1}, Lcom/android/providers/contacts/T9SearchSupport;->convertIndexToT9Char(I)C

    move-result v0

    .line 1654
    .restart local v0       #digit:C
    iget-object v4, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_92

    .line 1655
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v4, v4, v1

    monitor-enter v4

    .line 1656
    :try_start_7f
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v5, v5, v1

    new-instance v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    invoke-direct {v6, p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1657
    monitor-exit v4
    :try_end_8c
    .catchall {:try_start_7f .. :try_end_8c} :catchall_95

    .line 1658
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aput-boolean v7, v4, v1

    .line 1659
    iput-boolean v7, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    .line 1651
    :cond_92
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 1657
    :catchall_95
    move-exception v5

    :try_start_96
    monitor-exit v4
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v5

    .line 1662
    .end local v0           #digit:C
    :cond_98
    return-void
.end method

.method public static calculateMatchedLevel(Ljava/lang/String;I)I
    .registers 6
    .parameter "t9Key"
    .parameter "matchedCount"

    .prologue
    .line 1295
    const/4 v1, 0x0

    .line 1297
    .local v1, wordCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 1298
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x41

    if-le v2, v3, :cond_16

    .line 1299
    add-int/lit8 v1, v1, 0x1

    .line 1300
    if-le v1, p1, :cond_16

    .line 1301
    const/4 v2, 0x1

    .line 1305
    :goto_15
    return v2

    .line 1297
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1305
    :cond_19
    const/4 v2, 0x3

    goto :goto_15
.end method

.method private clearItems()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1539
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 1540
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1541
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameSortedFlagArray:[Z

    aput-boolean v2, v1, v0

    .line 1542
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1543
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aput-boolean v2, v1, v0

    .line 1539
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1545
    :cond_20
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v0, v1

    :goto_23
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_36

    .line 1546
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1547
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aput-boolean v2, v1, v0

    .line 1545
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1549
    :cond_36
    iput-boolean v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    .line 1550
    return-void
.end method

.method private closeStatements()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1479
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_c

    .line 1480
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1481
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1483
    :cond_c
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_17

    .line 1484
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1485
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1487
    :cond_17
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_22

    .line 1488
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1489
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1491
    :cond_22
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_2d

    .line 1492
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1493
    iput-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1495
    :cond_2d
    return-void
.end method

.method public static converDigitToInitial(C)C
    .registers 2
    .parameter "digit"

    .prologue
    .line 1283
    const/16 v0, 0x30

    sub-int v0, p0, v0

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    return v0
.end method

.method public static convertIndexToT9Char(I)C
    .registers 3
    .parameter "index"

    .prologue
    .line 1238
    if-ltz p0, :cond_a

    const/16 v0, 0x9

    if-gt p0, v0, :cond_a

    .line 1239
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1246
    :goto_9
    return v0

    .line 1242
    :cond_a
    packed-switch p0, :pswitch_data_1c

    .line 1249
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "INVALID INDEX"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1244
    :pswitch_15
    const/16 v0, 0x2b

    goto :goto_9

    .line 1246
    :pswitch_18
    const/16 v0, 0x2c

    goto :goto_9

    .line 1242
    nop

    :pswitch_data_1c
    .packed-switch 0xa
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method public static convertT9CharToIndex(C)I
    .registers 3
    .parameter "digit"

    .prologue
    const/16 v1, 0x30

    .line 1261
    if-lt p0, v1, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 1262
    sub-int v0, p0, v1

    .line 1269
    :goto_a
    return v0

    .line 1265
    :cond_b
    packed-switch p0, :pswitch_data_1c

    .line 1272
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "INVALID T9 SEARCH CHARACTER"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1267
    :pswitch_16
    const/16 v0, 0xa

    goto :goto_a

    .line 1269
    :pswitch_19
    const/16 v0, 0xb

    goto :goto_a

    .line 1265
    :pswitch_data_1c
    .packed-switch 0x2b
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 1883
    const-string v0, "DROP TABLE IF EXISTS t9_lookup"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1884
    const-string v0, "CREATE TABLE t9_lookup (data_id INTEGER REFERENCES contacts(_id) NOT NULL,contact_id INTEGER REFERENCES contacts(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,data TEXT NOT NULL,normalized_data TEXT NOT NULL,display_name TEXT NOT NULL,photo_id INTEGER REFERENCES contacts(photo_id) NOT NULL,times_contacted INTEGER NOT NULL DEFAULT 0,t9_key TEXT NOT NULL,display_string TEXT DEFAULT NULL,key_type INTEGER NOT NULL DEFAULT 0,UNIQUE(data_id, t9_key));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1898
    return-void
.end method

.method private deleteItem(Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .registers 5
    .parameter
    .parameter "idType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/providers/contacts/T9SearchSupport$IdType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1755
    .local p1, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport$IdType;->DataId:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    if-eq p2, v1, :cond_d

    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport$IdType;->RawContactId:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    if-eq p2, v1, :cond_d

    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport$IdType;->ContactId:Lcom/android/providers/contacts/T9SearchSupport$IdType;

    if-eq p2, v1, :cond_d

    .line 1766
    :cond_c
    return-void

    .line 1759
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 1760
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->deleteItem([Ljava/util/ArrayList;ILjava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    .line 1761
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->deleteItem([Ljava/util/ArrayList;ILjava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    .line 1759
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1763
    :cond_20
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v0, v1

    :goto_23
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 1764
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->deleteItem([Ljava/util/ArrayList;ILjava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V

    .line 1763
    add-int/lit8 v0, v0, 0x1

    goto :goto_23
.end method

.method private deleteItem([Ljava/util/ArrayList;ILjava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .registers 12
    .parameter
    .parameter "index"
    .parameter
    .parameter "idType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/providers/contacts/T9SearchSupport$IdType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1716
    .local p1, listArray:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .local p3, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    aget-object v2, p1, p2

    .line 1717
    .local v2, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    monitor-enter v2

    .line 1718
    :try_start_3
    aget-object v3, p1, p2
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_89

    .line 1719
    .end local v2           #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .local v3, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1720
    .local v1, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    sget-object v5, Lcom/android/providers/contacts/T9SearchSupport$3;->$SwitchMap$com$android$providers$contacts$T9SearchSupport$IdType:[I

    invoke-virtual {p4}, Lcom/android/providers/contacts/T9SearchSupport$IdType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_8c

    .line 1743
    :cond_19
    aput-object v1, p1, p2

    .line 1744
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_42

    .line 1745
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    .line 1746
    return-void

    .line 1722
    :pswitch_20
    :try_start_20
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1723
    .local v4, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v5, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 1724
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 1744
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v4           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :catchall_42
    move-exception v5

    :goto_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_20 .. :try_end_44} :catchall_42

    throw v5

    .line 1729
    .restart local v1       #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :pswitch_45
    :try_start_45
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_49
    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1730
    .restart local v4       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v5, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 1731
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 1736
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v4           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :pswitch_67
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_6b
    :goto_6b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1737
    .restart local v4       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v5, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 1738
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_88
    .catchall {:try_start_45 .. :try_end_88} :catchall_42

    goto :goto_6b

    .line 1744
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v3           #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v4           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    .restart local v2       #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :catchall_89
    move-exception v5

    move-object v3, v2

    .end local v2           #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .restart local v3       #oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    goto :goto_43

    .line 1720
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_20
        :pswitch_45
        :pswitch_67
    .end packed-switch
.end method

.method private static extendCandidates(Ljava/util/ArrayList;I)V
    .registers 6
    .parameter
    .parameter "times"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2038
    .local p0, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2039
    .local v0, curSize:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_5
    if-ge v1, p1, :cond_1d

    .line 2040
    const/4 v2, 0x0

    .local v2, j:I
    :goto_8
    if-ge v2, v0, :cond_1a

    .line 2041
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2040
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2039
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2044
    .end local v2           #j:I
    :cond_1d
    return-void
.end method

.method private static filterNonLetterAndDigit(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "builder"
    .parameter "input"

    .prologue
    .line 1330
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1331
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 1332
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1333
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1334
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1331
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1337
    .end local v0           #c:C
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static generateT9Key(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "matchName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 571
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .local v6, t9Array:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;>;"
    const-string v7, "0        1        2ABC\u0410\u0411\u0412\u0413 3DEF\u0414\u0415\u0401\u0416\u04174GHI\u0418\u0419\u041a\u041b 5JKL\u041c\u041d\u041e\u041f 6MNO\u0420\u0421\u0422\u04237PQRS\u0424\u0425\u0426\u0427 8TUV\u0428\u0429\u042b\u042a 9WXYZ\u042c\u042d\u042e\u042f"

    .line 576
    .local v7, t9letters:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 577
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 596
    new-instance v8, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;-><init>(Lcom/android/providers/contacts/T9SearchSupport$1;)V

    .line 597
    .local v8, t9s:Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;
    const/4 v10, 0x2

    iput v10, v8, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mKeyType:I

    .line 598
    iput-object p0, v8, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mMatchString:Ljava/lang/String;

    .line 599
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mT9Key:Ljava/lang/String;

    .line 600
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    return-object v4

    .line 579
    .end local v8           #t9s:Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;
    :cond_0
    const/16 v3, 0x20

    .line 580
    .local v3, num:C
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 581
    .local v5, sym:C
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    .line 583
    .local v9, tmp:C
    invoke-static {v9}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 584
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 585
    .local v2, mpos:I
    if-ltz v2, :cond_2

    .line 586
    div-int/lit8 v10, v2, 0x9

    int-to-char v3, v10

    .line 587
    if-eqz v0, :cond_1

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-nez v10, :cond_1

    sub-int v10, v0, v11

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v10

    if-nez v10, :cond_3

    .line 588
    :cond_1
    add-int/lit8 v10, v3, 0x41

    int-to-char v3, v10

    .line 594
    .end local v2           #mpos:I
    :cond_2
    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    .restart local v2       #mpos:I
    :cond_3
    add-int/lit8 v10, v3, 0x30

    int-to-char v3, v10

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/providers/contacts/T9SearchSupport;
    .registers 1

    .prologue
    .line 1190
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/T9SearchSupport;
    .registers 2
    .parameter "database"

    .prologue
    .line 1197
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->sInstance:Lcom/android/providers/contacts/T9SearchSupport;

    if-nez v0, :cond_16

    .line 1200
    if-nez p0, :cond_f

    .line 1204
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1208
    :cond_f
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->sInstance:Lcom/android/providers/contacts/T9SearchSupport;

    .line 1213
    :cond_16
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->sInstance:Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1214
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->sInstance:Lcom/android/providers/contacts/T9SearchSupport;

    return-object v0
.end method

.method private getMinimizedCandidate(Ljava/lang/String;Lcom/android/providers/contacts/T9SearchSupport$CachedResults;[Ljava/util/ArrayList;)Landroid/util/Pair;
    .registers 13
    .parameter "key"
    .parameter "cachedResults"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/providers/contacts/T9SearchSupport$CachedResults;",
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, basicListArray:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2184
    .local v4, minLen:I
    const/4 v2, -0x1

    .line 2185
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v4, :cond_25

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_25

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 2189
    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    if-ne v2, v5, :cond_44

    move v3, v8

    .line 2190
    .local v3, matched:Z
    :goto_2d
    const/4 v0, 0x0

    .line 2191
    .local v0, cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    if-ltz v2, :cond_46

    .line 2193
    iget-object v5, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    aget-object v0, v5, v2

    .line 2194
    if-nez v0, :cond_46

    .line 2198
    const/4 v3, 0x0

    .line 2199
    sub-int v1, v2, v8

    :goto_39
    if-ltz v1, :cond_46

    iget-object v5, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    aget-object v0, v5, v1

    if-nez v0, :cond_46

    add-int/lit8 v1, v1, -0x1

    goto :goto_39

    .end local v0           #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    .end local v3           #matched:Z
    :cond_44
    move v3, v7

    .line 2189
    goto :goto_2d

    .line 2203
    .restart local v0       #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    .restart local v3       #matched:Z
    :cond_46
    if-ltz v2, :cond_4a

    if-nez v0, :cond_66

    .line 2206
    :cond_4a
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .end local v0           #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/providers/contacts/T9SearchSupport;->convertT9CharToIndex(C)I

    move-result v5

    aget-object v5, p3, v5

    invoke-direct {v0, v5, v7}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Ljava/util/ArrayList;I)V

    .line 2207
    .restart local v0       #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object v5, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    aput-object v0, v5, v7

    .line 2208
    const/4 v2, 0x0

    .line 2209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    if-ne v2, v5, :cond_8a

    move v3, v8

    .line 2212
    :cond_66
    :goto_66
    add-int/lit8 v5, v2, 0x1

    iget-object v6, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_7e

    .line 2213
    iget-object v5, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 2215
    :cond_7e
    iput-object p1, p2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    .line 2216
    new-instance v5, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_8a
    move v3, v7

    .line 2209
    goto :goto_66
.end method

.method private getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;
    .registers 3
    .parameter "operator"

    .prologue
    .line 2995
    const/4 v0, 0x0

    .line 2996
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    packed-switch p1, :pswitch_data_36

    .line 3022
    :goto_4
    return-object v0

    .line 2998
    :pswitch_5
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;

    .end local v0           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$DataDeletingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 2999
    .restart local v0       #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    goto :goto_4

    .line 3001
    :pswitch_b
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$RawContactDeletingOperation;

    .end local v0           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$RawContactDeletingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 3002
    .restart local v0       #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    goto :goto_4

    .line 3004
    :pswitch_11
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$DataInsertingOperation;

    .end local v0           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$DataInsertingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 3005
    .restart local v0       #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    goto :goto_4

    .line 3007
    :pswitch_17
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;

    .end local v0           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$RawContactInsertingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 3008
    .restart local v0       #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    goto :goto_4

    .line 3010
    :pswitch_1d
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;

    .end local v0           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$DataUpdatingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 3011
    .restart local v0       #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    goto :goto_4

    .line 3013
    :pswitch_23
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;

    .end local v0           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$DisplayNameUpdatingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 3014
    .restart local v0       #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    goto :goto_4

    .line 3016
    :pswitch_29
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;

    .end local v0           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$PhotoUpdatingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    .line 3017
    .restart local v0       #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    goto :goto_4

    .line 3019
    :pswitch_2f
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;

    .end local v0           #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/T9SearchSupport$TimesContactedUpdatingOperation;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    .restart local v0       #o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    goto :goto_4

    .line 2996
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_23
        :pswitch_b
        :pswitch_17
        :pswitch_5
        :pswitch_11
        :pswitch_1d
        :pswitch_29
        :pswitch_2f
    .end packed-switch
.end method

.method private static getQueryT9ItemSql(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .registers 7
    .parameter "db"

    .prologue
    .line 1218
    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport;->sQueryT9ItemSql:Ljava/lang/String;

    if-nez v1, :cond_3b

    .line 1220
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    .line 1221
    .local v0, dbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, p0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sPhoneMimeTypeId:J

    .line 1222
    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, p0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    .line 1224
    const-string v1, "SELECT data._id AS data_id, view_contacts._id AS contact_id, raw_contacts._id AS raw_contact_id, data.data1 AS data, data.mimetype_id, view_contacts.display_name AS display_name, view_contacts.photo_id AS photo_id, view_contacts.times_contacted AS times_contacted FROM raw_contacts,view_contacts,data WHERE (%s) AND raw_contacts.contact_id=view_contacts._id AND data.raw_contact_id=raw_contacts._id AND (data.mimetype_id=%d OR data.mimetype_id=%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "%s"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-wide v4, Lcom/android/providers/contacts/T9SearchSupport;->sPhoneMimeTypeId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-wide v4, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/contacts/T9SearchSupport;->sQueryT9ItemSql:Ljava/lang/String;

    .line 1227
    .end local v0           #dbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    :cond_3b
    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport;->sQueryT9ItemSql:Ljava/lang/String;

    return-object v1
.end method

.method private incTimesContacted(J[Ljava/util/ArrayList;[ZIJ)J
    .registers 15
    .parameter "timesContacted"
    .parameter
    .parameter "isListSorted"
    .parameter "index"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;[ZIJ)J"
        }
    .end annotation

    .prologue
    .local p3, listArray:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    const/4 v6, 0x0

    .line 1815
    aget-object v2, p3, p5

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1816
    .local v1, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v2, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    cmp-long v2, p6, v2

    if-nez v2, :cond_7

    .line 1819
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_29

    .line 1821
    iget-object v2, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    const-wide/16 v4, 0x1

    add-long p1, v2, v4

    .line 1823
    :cond_29
    iget-object v2, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iput-wide p1, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    .line 1824
    aput-boolean v6, p4, p5

    .line 1825
    iput-boolean v6, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    goto :goto_7

    .line 1828
    .end local v1           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_32
    return-wide p1
.end method

.method private incTimesContacted(J)V
    .registers 11
    .parameter "contactId"

    .prologue
    .line 1837
    const-wide/16 v1, -0x1

    .line 1838
    .local v1, timesContacted:J
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v0, v0

    if-ge v5, v0, :cond_15

    .line 1839
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameSortedFlagArray:[Z

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/T9SearchSupport;->incTimesContacted(J[Ljava/util/ArrayList;[ZIJ)J

    move-result-wide v1

    .line 1838
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1842
    :cond_15
    const/4 v5, 0x0

    :goto_16
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v0, v0

    if-ge v5, v0, :cond_28

    .line 1843
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/T9SearchSupport;->incTimesContacted(J[Ljava/util/ArrayList;[ZIJ)J

    move-result-wide v1

    .line 1842
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 1846
    :cond_28
    return-void
.end method

.method private static insertT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 11
    .parameter "self"
    .parameter "db"
    .parameter "whereClause"

    .prologue
    .line 1968
    const/4 v0, 0x0

    .line 1969
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1971
    .local v2, insertStatement:Landroid/database/sqlite/SQLiteStatement;
    if-nez p0, :cond_82

    :try_start_4
    const-string v5, "INSERT OR REPLACE INTO t9_lookup(data_id,contact_id,raw_contact_id,data,normalized_data,display_name,photo_id,times_contacted,t9_key,display_string,key_type) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    move-object v2, v5

    .line 1974
    :goto_b
    invoke-static {p1}, Lcom/android/providers/contacts/T9SearchSupport;->getQueryT9ItemSql(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1975
    .local v4, sql:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1976
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 1977
    .local v3, item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    :goto_24
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_86

    .line 1978
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    .line 1979
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    .line 1980
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    .line 1981
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    .line 1982
    iget-object v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/providers/contacts/T9SearchSupport;->normalizeNumber(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    .line 1984
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    .line 1985
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mPhotoId:J

    .line 1986
    const/4 v5, 0x7

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    .line 1987
    invoke-static {p0, v2, v3}, Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    :try_end_6b
    .catchall {:try_start_4 .. :try_end_6b} :catchall_93
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_6b} :catch_6c

    goto :goto_24

    .line 1989
    .end local v3           #item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    .end local v4           #sql:Ljava/lang/String;
    :catch_6c
    move-exception v5

    move-object v1, v5

    .line 1990
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_6e
    const-string v5, "T9SearchSupport"

    const-string v6, "failed to get t9 search item to add"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_93

    .line 1992
    if-eqz v0, :cond_7a

    .line 1993
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1995
    :cond_7a
    if-eqz v2, :cond_81

    if-nez p0, :cond_81

    .line 1996
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1999
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_81
    :goto_81
    return-void

    .line 1971
    :cond_82
    :try_start_82
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;
    :try_end_84
    .catchall {:try_start_82 .. :try_end_84} :catchall_93
    .catch Ljava/lang/RuntimeException; {:try_start_82 .. :try_end_84} :catch_6c

    move-object v2, v5

    goto :goto_b

    .line 1992
    .restart local v3       #item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    .restart local v4       #sql:Ljava/lang/String;
    :cond_86
    if-eqz v0, :cond_8b

    .line 1993
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1995
    :cond_8b
    if-eqz v2, :cond_81

    if-nez p0, :cond_81

    .line 1996
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_81

    .line 1992
    .end local v3           #item:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;
    .end local v4           #sql:Ljava/lang/String;
    :catchall_93
    move-exception v5

    if-eqz v0, :cond_99

    .line 1993
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1995
    :cond_99
    if-eqz v2, :cond_a0

    if-nez p0, :cond_a0

    .line 1996
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a0
    throw v5
.end method

.method private static insertT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    .registers 9
    .parameter "self"
    .parameter "insertStatement"
    .parameter "item"

    .prologue
    .line 2008
    iget-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/providers/contacts/T9SearchSupport;->generateT9Key(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2009
    .local v2, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;

    .line 2010
    .local v1, info:Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;
    iget-object v3, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mT9Key:Ljava/lang/String;

    iput-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    .line 2011
    iget v3, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mKeyType:I

    int-to-long v3, v3

    iput-wide v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mKeyType:J

    .line 2012
    iget-object v3, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;->mMatchString:Ljava/lang/String;

    iput-object v3, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayString:Ljava/lang/String;

    .line 2013
    const/4 v3, 0x1

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2014
    const/4 v3, 0x2

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2015
    const/4 v3, 0x3

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mRawContactId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2016
    const/4 v3, 0x4

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2017
    const/4 v3, 0x5

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2018
    const/4 v3, 0x6

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2019
    const/4 v3, 0x7

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mPhotoId:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2020
    const/16 v3, 0x8

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mTimesContacted:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2021
    const/16 v3, 0x9

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2022
    const/16 v3, 0xa

    iget-object v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDisplayString:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2023
    const/16 v3, 0xb

    iget-wide v4, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mKeyType:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2024
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2025
    if-eqz p0, :cond_a

    .line 2026
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    invoke-direct {v3, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/T9SearchSupport;->addItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    goto :goto_a

    .line 2029
    .end local v1           #info:Lcom/android/providers/contacts/T9SearchSupport$T9SearchKeyInfo;
    :cond_77
    return-void
.end method

.method private insertT9SearchItem(Ljava/util/Set;Lcom/android/providers/contacts/T9SearchSupport$IdType;)V
    .registers 7
    .parameter
    .parameter "idType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/providers/contacts/T9SearchSupport$IdType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1940
    .local p1, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 1941
    .local v0, columnName:Ljava/lang/String;
    sget-object v1, Lcom/android/providers/contacts/T9SearchSupport$3;->$SwitchMap$com$android$providers$contacts$T9SearchSupport$IdType:[I

    invoke-virtual {p2}, Lcom/android/providers/contacts/T9SearchSupport$IdType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4c

    .line 1954
    :goto_c
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1959
    :cond_18
    :goto_18
    return-void

    .line 1943
    :pswitch_19
    const-string v0, "raw_contacts._id"

    .line 1944
    goto :goto_c

    .line 1946
    :pswitch_1c
    const-string v0, "data._id"

    .line 1947
    goto :goto_c

    .line 1949
    :pswitch_1f
    const-string v0, "view_contacts._id"

    goto :goto_c

    .line 1958
    :cond_22
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_18

    .line 1941
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_19
        :pswitch_1f
    .end packed-switch
.end method

.method private matchT9Name(Ljava/lang/String;ILjava/lang/String;ILjava/util/BitSet;)I
    .registers 15
    .parameter "pattern"
    .parameter "pstart"
    .parameter "key"
    .parameter "kstart"
    .parameter "matchedChars"

    .prologue
    .line 2234
    const/4 v6, 0x1

    .line 2237
    .local v6, countOfMatchedWord:I
    add-int/lit8 v2, p2, 0x1

    .line 2238
    .local v2, nextInitialCharIndex:I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_11

    .line 2239
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_33

    .line 2244
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_38

    .line 2248
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .end local v2           #nextInitialCharIndex:I
    sub-int/2addr v2, p4

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, p3, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2249
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    sub-int/2addr v0, p4

    invoke-virtual {p5, p2, v0}, Ljava/util/BitSet;->set(II)V

    move v0, v6

    .line 2312
    :goto_32
    return v0

    .line 2238
    .restart local v2       #nextInitialCharIndex:I
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2252
    .end local v2           #nextInitialCharIndex:I
    :cond_36
    const/4 v0, 0x0

    goto :goto_32

    .line 2259
    .restart local v2       #nextInitialCharIndex:I
    :cond_38
    add-int/lit8 v0, p4, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->converDigitToInitial(C)C

    move-result v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_6d

    .line 2260
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p4, 0x2

    if-ne v0, v1, :cond_5a

    .line 2261
    add-int/lit8 v6, v6, 0x1

    .line 2263
    invoke-virtual {p5, p2}, Ljava/util/BitSet;->set(I)V

    .line 2264
    invoke-virtual {p5, v2}, Ljava/util/BitSet;->set(I)V

    move v0, v6

    .line 2265
    goto :goto_32

    .line 2268
    :cond_5a
    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Ljava/lang/String;ILjava/lang/String;ILjava/util/BitSet;)I

    move-result v0

    add-int/2addr v6, v0

    .line 2270
    const/4 v0, 0x1

    if-le v6, v0, :cond_6d

    .line 2271
    invoke-virtual {p5, p2}, Ljava/util/BitSet;->set(I)V

    move v0, v6

    .line 2272
    goto :goto_32

    .line 2277
    :cond_6d
    sub-int v8, v2, p2

    .line 2278
    .local v8, spanLength:I
    const/4 v0, 0x1

    sub-int v7, v2, v0

    .local v7, i:I
    :goto_72
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7f

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_72

    .line 2281
    :cond_7f
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt v0, v8, :cond_a4

    .line 2285
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .end local v2           #nextInitialCharIndex:I
    sub-int/2addr v2, p4

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, p3, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 2286
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    sub-int/2addr v0, p4

    invoke-virtual {p5, p2, v0}, Ljava/util/BitSet;->set(II)V

    move v0, v6

    .line 2287
    goto :goto_32

    .line 2289
    :cond_a2
    const/4 v0, 0x0

    goto :goto_32

    .line 2292
    .restart local v2       #nextInitialCharIndex:I
    :cond_a4
    add-int v0, p4, v8

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->converDigitToInitial(C)C

    move-result v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_ee

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v1, p4, 0x1

    const/4 v3, 0x1

    sub-int v3, v8, v3

    invoke-virtual {p1, v0, p3, v1, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 2298
    add-int v0, p4, v8

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_d7

    .line 2300
    add-int/lit8 v6, v6, 0x1

    .line 2301
    add-int v0, p2, v8

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p5, p2, v0}, Ljava/util/BitSet;->set(II)V

    move v0, v6

    .line 2302
    goto/16 :goto_32

    .line 2305
    :cond_d7
    add-int v4, p4, v8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Ljava/lang/String;ILjava/lang/String;ILjava/util/BitSet;)I

    move-result v0

    add-int/2addr v6, v0

    .line 2307
    const/4 v0, 0x1

    if-le v6, v0, :cond_ee

    .line 2308
    add-int v0, p2, v8

    invoke-virtual {p5, p2, v0}, Ljava/util/BitSet;->set(II)V

    .line 2309
    add-int/lit8 v0, v6, 0x1

    goto/16 :goto_32

    .line 2312
    :cond_ee
    const/4 v0, 0x0

    goto/16 :goto_32
.end method

.method private matchT9Name(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;)I
    .registers 14
    .parameter "pattern"
    .parameter "key"
    .parameter "matchedChars"

    .prologue
    const/4 v4, 0x0

    .line 2327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_d

    move v0, v4

    .line 2351
    :goto_c
    return v0

    .line 2331
    :cond_d
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->converDigitToInitial(C)C

    move-result v6

    .line 2333
    .local v6, first:C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    .line 2334
    .local v8, maxLength:I
    const/4 v9, 0x0

    .line 2335
    .local v9, startIndex:I
    :goto_21
    if-ge v9, v8, :cond_3a

    .line 2337
    invoke-virtual {p1, v6, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 2338
    .local v2, index:I
    if-gez v2, :cond_2b

    move v0, v4

    .line 2340
    goto :goto_c

    :cond_2b
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 2343
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Ljava/lang/String;ILjava/lang/String;ILjava/util/BitSet;)I

    move-result v7

    .line 2344
    .local v7, matchedCount:I
    if-lez v7, :cond_37

    move v0, v7

    .line 2346
    goto :goto_c

    .line 2349
    :cond_37
    add-int/lit8 v9, v2, 0x1

    .line 2350
    goto :goto_21

    .end local v2           #index:I
    .end local v7           #matchedCount:I
    :cond_3a
    move v0, v4

    .line 2351
    goto :goto_c
.end method

.method private matchT9Name(Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;Ljava/lang/String;)Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    .registers 7
    .parameter "result"
    .parameter "item"
    .parameter "key"

    .prologue
    .line 2363
    if-nez p1, :cond_1a

    .line 2365
    new-instance p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    .end local p1
    invoke-direct {p1, p0, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;-><init>(Lcom/android/providers/contacts/T9SearchSupport;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    .line 2372
    .restart local p1
    :goto_7
    iget-object v1, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedChars:Ljava/util/BitSet;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Ljava/lang/String;Ljava/lang/String;Ljava/util/BitSet;)I

    move-result v0

    .line 2373
    .local v0, countOfMatchedWord:I
    if-lez v0, :cond_19

    .line 2375
    iget-object v1, p2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mT9Key:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/providers/contacts/T9SearchSupport;->calculateMatchedLevel(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedLevel:I

    .line 2377
    :cond_19
    return-object p1

    .line 2368
    .end local v0           #countOfMatchedWord:I
    :cond_1a
    invoke-virtual {p1, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->setItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V

    goto :goto_7
.end method

.method public static normalizeNumber(Ljava/lang/String;J)Ljava/lang/String;
    .registers 6
    .parameter "number"
    .parameter "mimeTypeId"

    .prologue
    .line 1317
    sget-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_22

    const/4 v1, 0x3

    move v0, v1

    .line 1318
    .local v0, phoneType:I
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1317
    .end local v0           #phoneType:I
    :cond_22
    const/4 v1, 0x0

    move v0, v1

    goto :goto_8
.end method

.method private prepareStatements()V
    .registers 3

    .prologue
    .line 1501
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->closeStatements()V

    .line 1503
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT OR REPLACE INTO t9_lookup(data_id,contact_id,raw_contact_id,data,normalized_data,display_name,photo_id,times_contacted,t9_key,display_string,key_type) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1504
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE t9_lookup SET data=?, normalized_data=? WHERE data_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDataUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1507
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE t9_lookup SET photo_id=? WHERE contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1509
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE t9_lookup SET times_contacted=(times_contacted + 1) WHERE contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 1513
    return-void
.end method

.method public static rebuildAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 1908
    const-string v2, "DELETE FROM t9_lookup"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1910
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-nez v2, :cond_23

    const/4 v2, 0x1

    move v1, v2

    .line 1913
    .local v1, usingTransaction:Z
    :goto_d
    if-eqz v1, :cond_12

    .line 1914
    :try_start_f
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1916
    :cond_12
    const/4 v2, 0x0

    const-string v3, "raw_contacts.deleted=0"

    invoke-static {v2, p0, v3}, Lcom/android/providers/contacts/T9SearchSupport;->insertT9SearchItem(Lcom/android/providers/contacts/T9SearchSupport;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1917
    if-eqz v1, :cond_1d

    .line 1918
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_35
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_1d} :catch_26

    .line 1923
    :cond_1d
    if-eqz v1, :cond_22

    .line 1924
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1930
    :cond_22
    :goto_22
    return-void

    .line 1910
    .end local v1           #usingTransaction:Z
    :cond_23
    const/4 v2, 0x0

    move v1, v2

    goto :goto_d

    .line 1920
    .restart local v1       #usingTransaction:Z
    :catch_26
    move-exception v2

    move-object v0, v2

    .line 1921
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_28
    const-string v2, "T9SearchSupport"

    const-string v3, "rebuild t9 search database failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_35

    .line 1923
    if-eqz v1, :cond_22

    .line 1924
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_22

    .line 1923
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_35
    move-exception v2

    if-eqz v1, :cond_3b

    .line 1924
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3b
    throw v2
.end method

.method private sortAllItems()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, ""

    .line 1670
    iget-boolean v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    if-nez v1, :cond_a5

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 1671
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_52

    .line 1672
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameSortedFlagArray:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_30

    .line 1673
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 1674
    :try_start_22
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/providers/contacts/T9SearchSupport;->NAMEQUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1675
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_4c

    .line 1676
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameSortedFlagArray:[Z

    aput-boolean v4, v1, v0

    .line 1678
    :cond_30
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_49

    .line 1679
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 1680
    :try_start_3b
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/providers/contacts/T9SearchSupport;->NUMBERQUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1681
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_4f

    .line 1682
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aput-boolean v4, v1, v0

    .line 1671
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1675
    :catchall_4c
    move-exception v2

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v2

    .line 1681
    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v2

    .line 1685
    :cond_52
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v0, v1

    :goto_55
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_79

    .line 1686
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_73

    .line 1687
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 1688
    :try_start_65
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/providers/contacts/T9SearchSupport;->NUMBERQUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9NumberQueryComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1689
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_76

    .line 1690
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberSortedFlagArray:[Z

    aput-boolean v4, v1, v0

    .line 1685
    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 1689
    :catchall_76
    move-exception v2

    :try_start_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v2

    .line 1695
    :cond_79
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v1, v1, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v2, v2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v5, v2, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1696
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    const-string v2, ""

    iput-object v7, v1, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    .line 1697
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v1, v1, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v2, v2, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v5, v2, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1698
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    const-string v2, ""

    iput-object v7, v1, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQuery:Ljava/lang/String;

    .line 1700
    iput-boolean v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSorted:Z

    .line 1705
    .end local v0           #i:I
    :cond_a5
    return-void
.end method

.method private updateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "database"

    .prologue
    .line 1521
    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq p1, v1, :cond_b

    .line 1522
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1525
    :try_start_8
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->prepareStatements()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_b} :catch_c

    .line 1533
    :cond_b
    :goto_b
    return-void

    .line 1526
    :catch_c
    move-exception v0

    .line 1529
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-static {p1}, Lcom/android/providers/contacts/T9SearchSupport;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1530
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->prepareStatements()V

    goto :goto_b
.end method

.method private updateItem(JLjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "dataId"
    .parameter "data"
    .parameter "normalizedData"

    .prologue
    .line 1796
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    .local v6, arr$:[Ljava/util/ArrayList;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_4
    if-ge v7, v8, :cond_12

    aget-object v1, v6, v7

    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 1797
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/T9SearchSupport;->updateItem(Ljava/util/ArrayList;JLjava/lang/String;Ljava/lang/String;)V

    .line 1796
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1799
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :cond_12
    return-void
.end method

.method private updateItem(Ljava/util/ArrayList;JLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter "dataId"
    .parameter "data"
    .parameter "normalizedData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1778
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1779
    .local v1, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v2, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mDataId:J

    cmp-long v2, p2, v2

    if-nez v2, :cond_4

    .line 1780
    iget-object v2, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iput-object p4, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    .line 1781
    iget-object v2, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iput-object p5, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    goto :goto_4

    .line 1784
    .end local v1           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_21
    return-void
.end method

.method private updatePhotoId(JJ)V
    .registers 14
    .parameter "contactId"
    .parameter "photoId"

    .prologue
    .line 1872
    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    .local v6, arr$:[Ljava/util/ArrayList;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_4
    if-ge v7, v8, :cond_11

    aget-object v1, v6, v7

    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 1873
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/T9SearchSupport;->updatePhotoId(Ljava/util/ArrayList;JJ)V

    .line 1872
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1875
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    :cond_11
    return-void
.end method

.method private updatePhotoId(Ljava/util/ArrayList;JJ)V
    .registers 10
    .parameter
    .parameter "contactId"
    .parameter "photoId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 1856
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 1857
    .local v1, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v2, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mContactId:J

    cmp-long v2, p2, v2

    if-nez v2, :cond_4

    .line 1858
    iget-object v2, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iput-wide p4, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mPhotoId:J

    goto :goto_4

    .line 1861
    .end local v1           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_1d
    return-void
.end method

.method private waitForInitialized()V
    .registers 3

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2385
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result v1

    if-nez v1, :cond_13

    .line 2387
    :try_start_b
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInitializeLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_15
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_3

    .line 2388
    :catch_11
    move-exception v1

    goto :goto_3

    .line 2391
    :cond_13
    :try_start_13
    monitor-exit v0

    .line 2392
    return-void

    .line 2391
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v1
.end method


# virtual methods
.method public load()V
    .registers 26

    .prologue
    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->mInitializeLock:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3

    .line 1557
    const/4 v4, 0x0

    :try_start_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/contacts/T9SearchSupport;->mInitialized:Ljava/lang/Boolean;

    .line 1558
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_25

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->mInitializeLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 1561
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->mInitialized:Ljava/lang/Boolean;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1562
    monitor-exit v24
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_f7

    .line 1616
    :goto_24
    return-void

    .line 1558
    :catchall_25
    move-exception v4

    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v4

    .line 1569
    :cond_28
    :try_start_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v21

    .line 1570
    .local v21, alreadyInTransaction:Z
    if-nez v21, :cond_3b

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1575
    :cond_3b
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/contacts/T9SearchSupport;->clearItems()V
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_f7

    .line 1577
    const/16 v22, 0x0

    .line 1580
    .local v22, cursor:Landroid/database/Cursor;
    :try_start_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "t9_lookup"

    sget-object v5, Lcom/android/providers/contacts/T9SearchSupport$T9LookupTable;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1583
    :goto_52
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 1584
    new-instance v3, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    move-object/from16 v0, v22

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x2

    move-object/from16 v0, v22

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x3

    move-object/from16 v0, v22

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    move-object/from16 v0, v22

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    move-object/from16 v0, v22

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x6

    move-object/from16 v0, v22

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v15, 0x7

    move-object/from16 v0, v22

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/16 v17, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x9

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0xa

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-direct/range {v3 .. v20}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->addItem(Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;)V
    :try_end_c1
    .catchall {:try_start_40 .. :try_end_c1} :catchall_100
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_c1} :catch_c2

    goto :goto_52

    .line 1596
    :catch_c2
    move-exception v3

    move-object/from16 v23, v3

    .line 1597
    .local v23, e:Ljava/lang/RuntimeException;
    :try_start_c5
    const-string v3, "T9SearchSupport"

    const-string v4, "failed to load t9 search items from database"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d0
    .catchall {:try_start_c5 .. :try_end_d0} :catchall_100

    .line 1599
    if-eqz v22, :cond_d5

    .line 1600
    :try_start_d2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1605
    .end local v23           #e:Ljava/lang/RuntimeException;
    :cond_d5
    :goto_d5
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/contacts/T9SearchSupport;->mInitialized:Ljava/lang/Boolean;

    .line 1606
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/contacts/T9SearchSupport;->sortAllItems()V

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->mInitializeLock:Ljava/lang/Object;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1609
    if-nez v21, :cond_f4

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1615
    :cond_f4
    monitor-exit v24

    goto/16 :goto_24

    .end local v21           #alreadyInTransaction:Z
    .end local v22           #cursor:Landroid/database/Cursor;
    :catchall_f7
    move-exception v3

    monitor-exit v24
    :try_end_f9
    .catchall {:try_start_d2 .. :try_end_f9} :catchall_f7

    throw v3

    .line 1599
    .restart local v21       #alreadyInTransaction:Z
    .restart local v22       #cursor:Landroid/database/Cursor;
    :cond_fa
    if-eqz v22, :cond_d5

    .line 1600
    :try_start_fc
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_d5

    .line 1599
    :catchall_100
    move-exception v3

    if-eqz v22, :cond_106

    .line 1600
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_106
    throw v3
    :try_end_107
    .catchall {:try_start_fc .. :try_end_107} :catchall_f7
.end method

.method public loadAsync()V
    .registers 3

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInitializeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1463
    :try_start_3
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1464
    monitor-exit v0

    .line 1474
    :goto_c
    return-void

    .line 1467
    :cond_d
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$2;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/T9SearchSupport$2;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    invoke-virtual {v1}, Lcom/android/providers/contacts/T9SearchSupport$2;->start()V

    .line 1473
    monitor-exit v0

    goto :goto_c

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public onContactIdUpdated(J)V
    .registers 5
    .parameter "rawContactId"

    .prologue
    .line 3033
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_7

    .line 3038
    :goto_6
    return-void

    .line 3036
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->onRawContactDeleted(J)V

    .line 3037
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->onRawContactInserted(J)V

    goto :goto_6
.end method

.method public onDataDeleted(JJJ)V
    .registers 12
    .parameter "dataId"
    .parameter "rawContactId"
    .parameter "mimeTypeId"

    .prologue
    const-wide/16 v3, 0x0

    .line 3144
    sget-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sPhoneMimeTypeId:J

    cmp-long v1, p5, v1

    if-eqz v1, :cond_e

    sget-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    cmp-long v1, p5, v1

    if-nez v1, :cond_16

    .line 3147
    :cond_e
    cmp-long v1, p1, v3

    if-lez v1, :cond_16

    cmp-long v1, p3, v3

    if-gtz v1, :cond_17

    .line 3155
    :cond_16
    :goto_16
    return-void

    .line 3151
    :cond_17
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3152
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->add(JLjava/lang/Object;)V

    .line 3153
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_16
.end method

.method public onDataInserted(JJJLjava/lang/String;)V
    .registers 13
    .parameter "dataId"
    .parameter "rawContactId"
    .parameter "mimeTypeId"
    .parameter "data"

    .prologue
    const-wide/16 v3, 0x0

    .line 3166
    sget-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sPhoneMimeTypeId:J

    cmp-long v1, p5, v1

    if-eqz v1, :cond_e

    sget-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    cmp-long v1, p5, v1

    if-nez v1, :cond_16

    .line 3169
    :cond_e
    cmp-long v1, p1, v3

    if-lez v1, :cond_16

    cmp-long v1, p3, v3

    if-gtz v1, :cond_17

    .line 3177
    :cond_16
    :goto_16
    return-void

    .line 3173
    :cond_17
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3174
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->add(JLjava/lang/Object;)V

    .line 3175
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_16
.end method

.method public onDataUpdated(JJJLjava/lang/String;)V
    .registers 14
    .parameter "dataId"
    .parameter "rawContactId"
    .parameter "mimeTypeId"
    .parameter "data"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x5

    .line 3118
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3119
    invoke-virtual/range {p0 .. p6}, Lcom/android/providers/contacts/T9SearchSupport;->onDataDeleted(JJJ)V

    .line 3134
    :cond_c
    :goto_c
    return-void

    .line 3123
    :cond_d
    sget-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sPhoneMimeTypeId:J

    cmp-long v1, p5, v1

    if-eqz v1, :cond_19

    sget-wide v1, Lcom/android/providers/contacts/T9SearchSupport;->sSipMimeTypeId:J

    cmp-long v1, p5, v1

    if-nez v1, :cond_c

    .line 3126
    :cond_19
    cmp-long v1, p1, v4

    if-lez v1, :cond_c

    cmp-long v1, p3, v4

    if-lez v1, :cond_c

    .line 3130
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/T9SearchSupport;->getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3131
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;

    invoke-direct {v1, p5, p6, p7}, Lcom/android/providers/contacts/T9SearchSupport$UpdatedDataInfo;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->add(JLjava/lang/Object;)V

    .line 3132
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    invoke-virtual {v1, v3, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c
.end method

.method public onDisplayNameUpdated(J)V
    .registers 6
    .parameter "contactId"

    .prologue
    .line 3082
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_7

    .line 3089
    :goto_6
    return-void

    .line 3086
    :cond_7
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3087
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->add(JLjava/lang/Object;)V

    .line 3088
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6
.end method

.method public onPhotoUpdated(JJ)V
    .registers 8
    .parameter "contactId"
    .parameter "photoId"

    .prologue
    .line 3100
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_7

    .line 3107
    :goto_6
    return-void

    .line 3104
    :cond_7
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3105
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->add(JLjava/lang/Object;)V

    .line 3106
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6
.end method

.method public onRawContactDeleted(J)V
    .registers 6
    .parameter "rawContactId"

    .prologue
    .line 3048
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_7

    .line 3055
    :goto_6
    return-void

    .line 3052
    :cond_7
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3053
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->add(JLjava/lang/Object;)V

    .line 3054
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6
.end method

.method public onRawContactInserted(J)V
    .registers 6
    .parameter "rawContactId"

    .prologue
    .line 3065
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_7

    .line 3072
    :goto_6
    return-void

    .line 3069
    :cond_7
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3070
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->add(JLjava/lang/Object;)V

    .line 3071
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6
.end method

.method public onTimesContactedChanged(J)V
    .registers 6
    .parameter "contactId"

    .prologue
    .line 3187
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_7

    .line 3194
    :goto_6
    return-void

    .line 3191
    :cond_7
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/T9SearchSupport;->getOperation(I)Lcom/android/providers/contacts/T9SearchSupport$Operation;

    move-result-object v0

    .line 3192
    .local v0, o:Lcom/android/providers/contacts/T9SearchSupport$Operation;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/providers/contacts/T9SearchSupport$Operation;->add(JLjava/lang/Object;)V

    .line 3193
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6
.end method

.method public onTransactionBegin()V
    .registers 4

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2959
    return-void
.end method

.method public onTransactionEnd()V
    .registers 4

    .prologue
    .line 2967
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2968
    return-void
.end method

.method public onTranscationCommit()V
    .registers 4

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2977
    return-void
.end method

.method public onTranscationRollback()V
    .registers 4

    .prologue
    .line 2985
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mOperationHandler:Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/T9SearchSupport$OperationHandler;->obtainOperationMessage(ILcom/android/providers/contacts/T9SearchSupport$Operation;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2986
    return-void
.end method

.method public queryT9Name(Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 14
    .parameter "key"
    .parameter "options"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 2403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x100

    if-ge v7, v8, :cond_16

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 2404
    :cond_16
    sget-object v7, Lcom/android/providers/contacts/T9SearchSupport;->EMPTY_CURSOR:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .line 2451
    .end local p0
    :goto_18
    return-object v7

    .line 2407
    .restart local p0
    :cond_19
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->waitForInitialized()V

    .line 2409
    const/4 v1, 0x0

    .line 2412
    .local v1, cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v8, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameT9SearchItemListArray:[Ljava/util/ArrayList;

    invoke-direct {p0, p1, v7, v8}, Lcom/android/providers/contacts/T9SearchSupport;->getMinimizedCandidate(Ljava/lang/String;Lcom/android/providers/contacts/T9SearchSupport$CachedResults;[Ljava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v4

    .line 2414
    .local v4, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;Ljava/lang/Boolean;>;"
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_b7

    .line 2416
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2417
    .local v2, fullMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2418
    .local v5, partialMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    const/4 v6, 0x0

    .line 2420
    .local v6, result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_86

    .line 2421
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-virtual {v7}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getResults()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4d
    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 2422
    .local v0, candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v7, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    invoke-direct {p0, v6, v7, p1}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;Ljava/lang/String;)Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    move-result-object v6

    .line 2423
    iget v7, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedLevel:I

    if-ne v7, v10, :cond_68

    .line 2424
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2425
    const/4 v6, 0x0

    goto :goto_4d

    .line 2426
    :cond_68
    iget v7, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedLevel:I

    if-ne v7, v9, :cond_4d

    .line 2427
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2428
    const/4 v6, 0x0

    goto :goto_4d

    .line 2433
    .end local v0           #candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_71
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2445
    :goto_74
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .end local v1           #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    invoke-direct {v1, v2, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Ljava/util/ArrayList;I)V

    .line 2447
    .restart local v1       #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object v7, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNameResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v7, v7, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v9

    aput-object v1, v7, v8

    .end local v2           #fullMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #partialMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v6           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    .end local p0
    :goto_84
    move-object v7, v1

    .line 2451
    goto :goto_18

    .line 2435
    .restart local v2       #fullMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .restart local v5       #partialMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .restart local v6       #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    .restart local p0
    :cond_86
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-virtual {v7}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getResults()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_92
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 2436
    .restart local v0       #candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v7, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    invoke-direct {p0, v6, v7, p1}, Lcom/android/providers/contacts/T9SearchSupport;->matchT9Name(Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;Ljava/lang/String;)Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    move-result-object v6

    .line 2437
    iget v7, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedLevel:I

    if-eq v7, v10, :cond_ac

    iget v7, v6, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->mMatchedLevel:I

    if-ne v7, v9, :cond_af

    .line 2439
    :cond_ac
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2441
    :cond_af
    const/4 v6, 0x0

    goto :goto_92

    .line 2443
    .end local v0           #candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_b1
    sget-object v7, Lcom/android/providers/contacts/T9SearchSupport;->NAMEQUERY_COMPARATOR:Lcom/android/providers/contacts/T9SearchSupport$T9NameQueryComparator;

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_74

    .line 2449
    .end local v2           #fullMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #partialMatched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local v6           #result:Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;
    :cond_b7
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .end local v1           #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object p0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-direct {v1, p0, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;I)V

    .restart local v1       #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    goto :goto_84
.end method

.method public queryT9Number(Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 11
    .parameter "key"
    .parameter "options"

    .prologue
    .line 2463
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x100

    if-lt v5, v6, :cond_11

    .line 2464
    :cond_e
    sget-object v5, Lcom/android/providers/contacts/T9SearchSupport;->EMPTY_CURSOR:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .line 2489
    .end local p0
    :goto_10
    return-object v5

    .line 2467
    .restart local p0
    :cond_11
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport;->waitForInitialized()V

    .line 2469
    const/4 v1, 0x0

    .line 2472
    .local v1, cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v6, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberT9SearchItemListArray:[Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v6}, Lcom/android/providers/contacts/T9SearchSupport;->getMinimizedCandidate(Ljava/lang/String;Lcom/android/providers/contacts/T9SearchSupport$CachedResults;[Ljava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v3

    .line 2474
    .local v3, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;Ljava/lang/Boolean;>;"
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_65

    .line 2476
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2478
    .local v4, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-virtual {v5}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getResults()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_38
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 2479
    .local v0, candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    iget-object v5, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->mItem:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_38

    .line 2480
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 2483
    .end local v0           #candidate:Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;
    :cond_52
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .end local v1           #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    invoke-direct {v1, v4, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Ljava/util/ArrayList;I)V

    .line 2485
    .restart local v1       #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCachedNumberResults:Lcom/android/providers/contacts/T9SearchSupport$CachedResults;

    iget-object v5, v5, Lcom/android/providers/contacts/T9SearchSupport$CachedResults;->mQueryResults:[Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aput-object v1, v5, v6

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;>;"
    .end local p0
    :goto_63
    move-object v5, v1

    .line 2489
    goto :goto_10

    .line 2487
    .restart local p0
    :cond_65
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .end local v1           #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    iget-object p0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-direct {v1, p0, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;I)V

    .restart local v1       #cursor:Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
    goto :goto_63
.end method
