.class public Lcom/android/mms/data/FestivalSmsUpdater;
.super Ljava/lang/Object;
.source "FestivalSmsUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/FestivalSmsUpdater$1;,
        Lcom/android/mms/data/FestivalSmsUpdater$DatabaseContentException;,
        Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;,
        Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;,
        Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;
    }
.end annotation


# static fields
.field private static final CATEGORY_LIST_URL:Ljava/lang/String;

.field private static MESSAGE_INCREMENTAL_SIZE:I

.field private static MESSAGE_INITIAL_SIZE:I


# instance fields
.field private mCategoriesToRemove:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoriesToUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mFestivalInfoToUpdate:Landroid/content/ContentValues;

.field private mMessagesToInsert:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 30
    const-string v0, "/xShare"

    invoke-static {v0}, Lcom/android/mms/data/FestivalSmsUpdater;->completeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/FestivalSmsUpdater;->CATEGORY_LIST_URL:Ljava/lang/String;

    .line 35
    sput v1, Lcom/android/mms/data/FestivalSmsUpdater;->MESSAGE_INITIAL_SIZE:I

    .line 36
    sput v1, Lcom/android/mms/data/FestivalSmsUpdater;->MESSAGE_INCREMENTAL_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    return-void
.end method

.method private cleanUpdateData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mCategoriesToRemove:Ljava/util/Set;

    .line 120
    iput-object v0, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mCategoriesToUpdate:Ljava/util/ArrayList;

    .line 121
    iput-object v0, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mFestivalInfoToUpdate:Landroid/content/ContentValues;

    .line 122
    iput-object v0, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mMessagesToInsert:Ljava/util/ArrayList;

    .line 123
    return-void
.end method

.method private static completeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 209
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.miui.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private getCategoryUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "categoryName"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 126
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "categories"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "url"

    aput-object v3, v2, v6

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 131
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 133
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 137
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 140
    :goto_0
    return-object v0

    .line 137
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v5

    .line 140
    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getMessageCount(Ljava/lang/String;)I
    .locals 9
    .parameter "categoryName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "COUNT(*)"

    aput-object v3, v2, v6

    const-string v3, "category_name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 151
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 153
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 157
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 160
    :goto_0
    return v0

    .line 157
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private httpGet(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 7
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 164
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 165
    .local v1, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, httpGet:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 174
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    .line 175
    new-instance v4, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;

    invoke-direct {v4, v6}, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v4

    .line 169
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    new-instance v4, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;

    invoke-direct {v4, v6}, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v4

    .line 171
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;

    invoke-direct {v4, v6}, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v4

    .line 177
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_0
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    return-object v4
.end method

.method private httpGetByteArray(Ljava/lang/String;)[B
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 196
    invoke-direct {p0, p1}, Lcom/android/mms/data/FestivalSmsUpdater;->httpGet(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 197
    .local v1, httpEntity:Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_0

    .line 198
    new-instance v2, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;

    invoke-direct {v2, v3}, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v2

    .line 200
    :cond_0
    :try_start_0
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Lorg/apache/http/ParseException;
    new-instance v2, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;

    invoke-direct {v2, v3}, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v2

    .line 203
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 204
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;

    invoke-direct {v2, v3}, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v2
.end method

.method private httpGetString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&alt=json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/data/FestivalSmsUpdater;->httpGet(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 183
    .local v1, httpEntity:Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_0

    .line 184
    new-instance v2, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;

    invoke-direct {v2, v4}, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v2

    .line 186
    :cond_0
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 187
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 188
    .local v0, e:Lorg/apache/http/ParseException;
    new-instance v2, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;

    invoke-direct {v2, v4}, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v2

    .line 189
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 190
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;

    invoke-direct {v2, v4}, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v2
.end method

.method private insertMessages(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mMessagesToInsert:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 432
    :cond_0
    return-void

    .line 425
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mMessagesToInsert:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 426
    iget v1, p1, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->numMessagesUpdated:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->numMessagesUpdated:I

    .line 427
    iget-object v2, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "messages"

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mMessagesToInsert:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private processCategories(Lorg/json/JSONArray;)V
    .locals 23
    .parameter "categoryArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;
        }
    .end annotation

    .prologue
    .line 215
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v15, nameTimestampMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "timestamp"

    aput-object v4, v5, v3

    .line 221
    .local v5, columns:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/FestivalSmsUpdater;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "categories"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 223
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    .line 225
    const/4 v3, -0x1

    :try_start_0
    invoke-interface {v12, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 226
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 228
    .local v14, name:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 229
    .local v19, timestamp:J
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 232
    .end local v14           #name:Ljava/lang/String;
    .end local v19           #timestamp:J
    :catchall_0
    move-exception v3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/data/FestivalSmsUpdater;->mCategoriesToUpdate:Ljava/util/ArrayList;

    .line 238
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v13, v3, :cond_7

    .line 239
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 240
    .local v17, o:Lorg/json/JSONObject;
    const-string v3, "category"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 241
    .local v11, category:Ljava/lang/String;
    if-nez v11, :cond_2

    .line 242
    new-instance v3, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v3

    .line 244
    :cond_2
    const-string v3, "timestamp"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 245
    .restart local v19       #timestamp:J
    const-wide/16 v3, 0x0

    cmp-long v3, v19, v3

    if-gez v3, :cond_3

    .line 246
    new-instance v3, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v3

    .line 248
    :cond_3
    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    .line 249
    .local v18, oldTimestamp:Ljava/lang/Long;
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->intValue()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v19

    if-nez v3, :cond_4

    .line 250
    invoke-virtual {v15, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 254
    :cond_4
    const-string v3, "url"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 255
    .local v21, url:Ljava/lang/String;
    if-nez v21, :cond_5

    .line 256
    new-instance v3, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v3

    .line 258
    :cond_5
    const-string v3, "number"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 259
    .local v16, number:I
    if-gtz v16, :cond_6

    .line 260
    new-instance v3, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v3

    .line 262
    :cond_6
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 263
    .local v22, values:Landroid/content/ContentValues;
    const-string v3, "url"

    move-object/from16 v0, v22

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v3, "sms_count"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    const-string v3, "name"

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v3, "timestamp"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/FestivalSmsUpdater;->mCategoriesToUpdate:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 269
    .end local v11           #category:Ljava/lang/String;
    .end local v16           #number:I
    .end local v17           #o:Lorg/json/JSONObject;
    .end local v18           #oldTimestamp:Ljava/lang/Long;
    .end local v19           #timestamp:J
    .end local v21           #url:Ljava/lang/String;
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_7
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/data/FestivalSmsUpdater;->mCategoriesToRemove:Ljava/util/Set;

    .line 270
    return-void
.end method

.method private processFestivalInfo(Lorg/json/JSONObject;)V
    .locals 23
    .parameter "festivalObj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;,
            Lorg/json/JSONException;,
            Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;
        }
    .end annotation

    .prologue
    .line 311
    const-string v3, "banner"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 312
    .local v11, banner:Ljava/lang/String;
    if-nez v11, :cond_0

    .line 313
    new-instance v3, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v3

    .line 315
    :cond_0
    const-string v3, "url"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 316
    .local v22, url:Ljava/lang/String;
    if-nez v22, :cond_1

    .line 317
    new-instance v3, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v3

    .line 319
    :cond_1
    const-string v3, "begin"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 320
    .local v15, beginString:Ljava/lang/String;
    if-nez v15, :cond_2

    .line 321
    new-instance v3, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v3

    .line 323
    :cond_2
    const-string v3, "end"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 324
    .local v20, endString:Ljava/lang/String;
    if-nez v20, :cond_3

    .line 325
    new-instance v3, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v3

    .line 327
    :cond_3
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 330
    .local v21, formatter:Ljava/text/DateFormat;
    :try_start_0
    move-object/from16 v0, v21

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    .line 331
    .local v13, begin:J
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    .line 338
    .local v18, end:J
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "category_url"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "begin"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "end"

    aput-object v4, v5, v3

    .line 343
    .local v5, columns:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/FestivalSmsUpdater;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "festival"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 346
    .local v16, cursor:Landroid/database/Cursor;
    if-eqz v16, :cond_5

    .line 348
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v3, v13, v3

    if-nez v3, :cond_4

    const/4 v3, 0x2

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    cmp-long v3, v18, v3

    if-nez v3, :cond_4

    .line 353
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 367
    .end local v5           #columns:[Ljava/lang/String;
    :goto_0
    return-void

    .line 332
    .end local v13           #begin:J
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v18           #end:J
    :catch_0
    move-exception v3

    move-object/from16 v17, v3

    .line 333
    .local v17, e:Ljava/text/ParseException;
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParseException;->printStackTrace()V

    .line 334
    new-instance v3, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v3

    .line 353
    .end local v17           #e:Ljava/text/ParseException;
    .restart local v5       #columns:[Ljava/lang/String;
    .restart local v13       #begin:J
    .restart local v16       #cursor:Landroid/database/Cursor;
    .restart local v18       #end:J
    :cond_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_5
    invoke-static {v11}, Lcom/android/mms/data/FestivalSmsUpdater;->completeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/mms/data/FestivalSmsUpdater;->httpGetByteArray(Ljava/lang/String;)[B

    move-result-object v12

    .line 358
    .local v12, bannerByteArray:[B
    if-nez v12, :cond_6

    .line 359
    new-instance v3, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v3

    .line 353
    .end local v12           #bannerByteArray:[B
    :catchall_0
    move-exception v3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v3

    .line 362
    .restart local v12       #bannerByteArray:[B
    :cond_6
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/data/FestivalSmsUpdater;->mFestivalInfoToUpdate:Landroid/content/ContentValues;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/FestivalSmsUpdater;->mFestivalInfoToUpdate:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "banner"

    invoke-virtual {v3, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/FestivalSmsUpdater;->mFestivalInfoToUpdate:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "category_url"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/FestivalSmsUpdater;->mFestivalInfoToUpdate:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "begin"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .end local v5           #columns:[Ljava/lang/String;
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/FestivalSmsUpdater;->mFestivalInfoToUpdate:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "end"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private processMessages()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;,
            Lorg/json/JSONException;,
            Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mMessagesToInsert:Ljava/util/ArrayList;

    .line 276
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mCategoriesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 277
    iget-object v5, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mCategoriesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 278
    .local v4, values:Landroid/content/ContentValues;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&begin=0&length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/mms/data/FestivalSmsUpdater;->MESSAGE_INITIAL_SIZE:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/data/FestivalSmsUpdater;->completeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, url:Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, categoryName:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/mms/data/FestivalSmsUpdater;->httpGetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, content:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 283
    new-instance v5, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v5

    .line 285
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/mms/data/FestivalSmsUpdater;->processMessagesForCategory(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    .end local v0           #categoryName:Ljava/lang/String;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method private processMessagesForCategory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "categoryName"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 292
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 293
    .local v2, mainObj:Lorg/json/JSONObject;
    const-string v6, "data"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 294
    .local v3, messageArray:Lorg/json/JSONArray;
    if-nez v3, :cond_0

    .line 295
    new-instance v6, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;

    invoke-direct {v6, v7}, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v6

    .line 297
    :cond_0
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 298
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 299
    .local v4, obj:Lorg/json/JSONObject;
    const-string v6, "content"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, body:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 301
    new-instance v6, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;

    invoke-direct {v6, v7}, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v6

    .line 303
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 304
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "body"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v6, "category_name"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v6, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mMessagesToInsert:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v0           #body:Ljava/lang/String;
    .end local v4           #obj:Lorg/json/JSONObject;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_2
    return-void
.end method

.method private readAndParseFromJSON()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;,
            Lorg/json/JSONException;,
            Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 97
    sget-object v5, Lcom/android/mms/data/FestivalSmsUpdater;->CATEGORY_LIST_URL:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/mms/data/FestivalSmsUpdater;->httpGetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, content:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 99
    new-instance v5, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;

    invoke-direct {v5, v6}, Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v5

    .line 101
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .local v4, mainObj:Lorg/json/JSONObject;
    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 103
    .local v0, categoryArray:Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 104
    new-instance v5, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;

    invoke-direct {v5, v6}, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v5

    .line 106
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/mms/data/FestivalSmsUpdater;->processCategories(Lorg/json/JSONArray;)V

    .line 107
    invoke-direct {p0}, Lcom/android/mms/data/FestivalSmsUpdater;->processMessages()V

    .line 109
    const-string v5, "extra"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 110
    .local v2, extra:Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 111
    const-string v5, "festival"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 112
    .local v3, festival:Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 113
    invoke-direct {p0, v3}, Lcom/android/mms/data/FestivalSmsUpdater;->processFestivalInfo(Lorg/json/JSONObject;)V

    .line 116
    .end local v3           #festival:Lorg/json/JSONObject;
    :cond_2
    return-void
.end method

.method private readAndParseMessageFromJSON(Ljava/lang/String;)V
    .locals 7
    .parameter "categoryName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;,
            Lorg/json/JSONException;,
            Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;,
            Lcom/android/mms/data/FestivalSmsUpdater$DatabaseContentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/mms/data/FestivalSmsUpdater;->getCategoryUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, url:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/mms/data/FestivalSmsUpdater;->getMessageCount(Ljava/lang/String;)I

    move-result v1

    .line 76
    .local v1, count:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 77
    new-instance v3, Lcom/android/mms/data/FestivalSmsUpdater$DatabaseContentException;

    invoke-direct {v3, v6}, Lcom/android/mms/data/FestivalSmsUpdater$DatabaseContentException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v3

    .line 80
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&begin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/mms/data/FestivalSmsUpdater;->MESSAGE_INCREMENTAL_SIZE:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/data/FestivalSmsUpdater;->completeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-direct {p0, v2}, Lcom/android/mms/data/FestivalSmsUpdater;->httpGetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, content:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 83
    new-instance v3, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;

    invoke-direct {v3, v6}, Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;-><init>(Lcom/android/mms/data/FestivalSmsUpdater$1;)V

    throw v3

    .line 85
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mMessagesToInsert:Ljava/util/ArrayList;

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/FestivalSmsUpdater;->processMessagesForCategory(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private removeCategories(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 380
    iget-object v2, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mCategoriesToRemove:Ljava/util/Set;

    if-nez v2, :cond_1

    .line 396
    :cond_0
    return-void

    .line 383
    :cond_1
    iget-object v2, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mCategoriesToRemove:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 384
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 386
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "categories"

    const-string v4, "name=?"

    new-array v5, v8, [Ljava/lang/String;

    aput-object v1, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 390
    iget v2, p1, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->numCategoriesUpdated:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->numCategoriesUpdated:I

    .line 391
    iget v2, p1, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->numMessagesUpdated:I

    iget-object v3, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "messages"

    const-string v5, "category_name=?"

    new-array v6, v8, [Ljava/lang/String;

    aput-object v1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->numMessagesUpdated:I

    goto :goto_0
.end method

.method private updateCategories(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)V
    .locals 10
    .parameter "info"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "categories"

    .line 399
    iget-object v2, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mCategoriesToUpdate:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 419
    :cond_0
    return-void

    .line 402
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mCategoriesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mCategoriesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "categories"

    const-string v3, "name=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object v1, v4, v7

    invoke-virtual {v2, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 409
    iget-object v3, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "categories"

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mCategoriesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-virtual {v3, v9, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 413
    iget v2, p1, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->numCategoriesUpdated:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->numCategoriesUpdated:I

    .line 414
    iget v2, p1, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->numMessagesUpdated:I

    iget-object v3, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "messages"

    const-string v5, "category_name=?"

    new-array v6, v8, [Ljava/lang/String;

    aput-object v1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->numMessagesUpdated:I

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateDatabase(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 371
    invoke-direct {p0, p1}, Lcom/android/mms/data/FestivalSmsUpdater;->removeCategories(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)V

    .line 372
    invoke-direct {p0, p1}, Lcom/android/mms/data/FestivalSmsUpdater;->updateCategories(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)V

    .line 373
    invoke-direct {p0, p1}, Lcom/android/mms/data/FestivalSmsUpdater;->insertMessages(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)V

    .line 374
    invoke-direct {p0, p1}, Lcom/android/mms/data/FestivalSmsUpdater;->updateFestivalInfo(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)V

    .line 375
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 376
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 377
    return-void
.end method

.method private updateFestivalInfo(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    const-string v3, "festival"

    .line 435
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mFestivalInfoToUpdate:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 444
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "festival"

    invoke-virtual {v0, v3, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "festival"

    iget-object v1, p0, Lcom/android/mms/data/FestivalSmsUpdater;->mFestivalInfoToUpdate:Landroid/content/ContentValues;

    invoke-virtual {v0, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;->festivalInfoUpdated:Z

    goto :goto_0
.end method


# virtual methods
.method public getMoreMessages(Ljava/lang/String;Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)Z
    .locals 1
    .parameter "categoryName"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;,
            Lorg/json/JSONException;,
            Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;,
            Lcom/android/mms/data/FestivalSmsUpdater$DatabaseContentException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/mms/data/FestivalSmsUpdater;->cleanUpdateData()V

    .line 68
    invoke-direct {p0, p1}, Lcom/android/mms/data/FestivalSmsUpdater;->readAndParseMessageFromJSON(Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p2}, Lcom/android/mms/data/FestivalSmsUpdater;->updateDatabase(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public update(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)Z
    .locals 1
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/data/FestivalSmsUpdater$HttpReadException;,
            Lorg/json/JSONException;,
            Lcom/android/mms/data/FestivalSmsUpdater$JSONContentException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/mms/data/FestivalSmsUpdater;->cleanUpdateData()V

    .line 91
    invoke-direct {p0}, Lcom/android/mms/data/FestivalSmsUpdater;->readAndParseFromJSON()V

    .line 92
    invoke-direct {p0, p1}, Lcom/android/mms/data/FestivalSmsUpdater;->updateDatabase(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method
