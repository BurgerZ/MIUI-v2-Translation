.class Lcom/android/calculator2/Logic;
.super Ljava/lang/Object;
.source "Logic.java"


# instance fields
.field private mDisplay:Lcom/android/calculator2/CalculatorDisplay;

.field private final mErrorString:Ljava/lang/String;

.field private mHistory:Lcom/android/calculator2/History;

.field private mIsError:Z

.field private mLineLength:I

.field private mResult:Ljava/lang/String;

.field private mSymbols:Lorg/javia/arity/Symbols;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/CalculatorDisplay;Landroid/widget/Button;)V
    .locals 3
    .parameter "context"
    .parameter "history"
    .parameter "display"
    .parameter "equalButton"

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/javia/arity/Symbols;

    invoke-direct {v0}, Lorg/javia/arity/Symbols;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 35
    iput-boolean v2, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 36
    iput v2, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    .line 52
    iput-object p3, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    .line 53
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0, p0}, Lcom/android/calculator2/CalculatorDisplay;->setLogic(Lcom/android/calculator2/Logic;)V

    .line 55
    invoke-direct {p0, v2}, Lcom/android/calculator2/Logic;->clearWithHistory(Z)V

    .line 56
    return-void
.end method

.method private clear(Z)V
    .locals 3
    .parameter "scroll"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    const-string v1, ""

    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/calculator2/Logic;->cleared()V

    .line 90
    return-void

    .line 88
    :cond_0
    sget-object v2, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    goto :goto_0
.end method

.method private clearWithHistory(Z)V
    .locals 3
    .parameter "scroll"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 85
    return-void

    .line 81
    :cond_0
    sget-object v2, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    goto :goto_0
.end method

.method private getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0}, Lcom/android/calculator2/CalculatorDisplay;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isOperator(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 242
    const-string v0, "+\u2212\u00d7\u00f7/*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isOperator(Ljava/lang/String;)Z
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/calculator2/Logic;->isOperator(C)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {v0, p1, v1}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 78
    return-void
.end method

.method private tryFormattingWithPrecision(DI)Ljava/lang/String;
    .locals 10
    .parameter "value"
    .parameter "precision"

    .prologue
    .line 193
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "g"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, result:Ljava/lang/String;
    const-string v5, "NaN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 195
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 196
    iget-object v5, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    .line 233
    :goto_0
    return-object v5

    .line 198
    :cond_0
    move-object v2, v4

    .line 199
    .local v2, mantissa:Ljava/lang/String;
    const/4 v1, 0x0

    .line 200
    .local v1, exponent:Ljava/lang/String;
    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 201
    .local v0, e:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    .line 202
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 205
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    const-string v5, "+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 207
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    :goto_1
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 215
    .local v3, period:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    .line 216
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 218
    :cond_2
    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    .line 220
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 221
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 211
    .end local v3           #period:I
    :cond_3
    move-object v2, v4

    goto :goto_1

    .line 223
    .restart local v3       #period:I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    if-ne v5, v6, :cond_5

    .line 224
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 228
    :cond_5
    if-eqz v1, :cond_6

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object v5, v4

    .line 233
    goto/16 :goto_0

    .line 231
    :cond_6
    move-object v4, v2

    goto :goto_3
.end method


# virtual methods
.method acceptInsert(Ljava/lang/String;)Z
    .locals 3
    .parameter "delta"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, text:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/calculator2/Logic;->isOperator(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v1}, Lcom/android/calculator2/CalculatorDisplay;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method cleared()V
    .locals 1

    .prologue
    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 95
    invoke-virtual {p0}, Lcom/android/calculator2/Logic;->updateHistory()V

    .line 96
    return-void
.end method

.method eatHorizontalMove(Z)Z
    .locals 5
    .parameter "toLeft"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorDisplay;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 64
    .local v1, editText:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 65
    .local v0, cursorPos:I
    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method evaluate(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const-string v8, ""

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    const-string v5, ""

    move-object v5, v8

    .line 187
    :goto_0
    return-object v5

    .line 172
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 173
    .local v2, size:I
    :goto_1
    if-lez v2, :cond_1

    sub-int v5, v2, v7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/calculator2/Logic;->isOperator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 174
    const/4 v5, 0x0

    sub-int v6, v2, v7

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 175
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 178
    :cond_1
    iget-object v5, p0, Lcom/android/calculator2/Logic;->mSymbols:Lorg/javia/arity/Symbols;

    invoke-virtual {v5, p1}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v3

    .line 180
    .local v3, value:D
    const-string v1, ""

    .line 181
    .local v1, result:Ljava/lang/String;
    iget v0, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    .local v0, precision:I
    :goto_2
    const/4 v5, 0x6

    if-le v0, v5, :cond_2

    .line 182
    invoke-direct {p0, v3, v4, v0}, Lcom/android/calculator2/Logic;->tryFormattingWithPrecision(DI)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    if-gt v5, v6, :cond_3

    .line 187
    :cond_2
    const/16 v5, 0x2d

    const/16 v6, 0x2212

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Infinity"

    const-string v7, "\u221e"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 181
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method insert(Ljava/lang/String;)V
    .locals 1
    .parameter "delta"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v0, p1}, Lcom/android/calculator2/CalculatorDisplay;->insert(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method onClear()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calculator2/Logic;->clear(Z)V

    .line 117
    return-void
.end method

.method onDelete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/calculator2/Logic;->clear(Z)V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v2, 0x43

    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calculator2/CalculatorDisplay;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    goto :goto_0
.end method

.method onDown()V
    .locals 4

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1, v0}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {v1, v2, v3}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 159
    :cond_1
    return-void
.end method

.method onEnter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 120
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/calculator2/Logic;->clearWithHistory(Z)V

    .line 139
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2, v1}, Lcom/android/calculator2/History;->enter(Ljava/lang/String;)V

    .line 126
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/calculator2/Logic;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_1
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-direct {p0, v3}, Lcom/android/calculator2/Logic;->clearWithHistory(Z)V

    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 128
    .local v0, e:Lorg/javia/arity/SyntaxException;
    iput-boolean v3, p0, Lcom/android/calculator2/Logic;->mIsError:Z

    .line 129
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mErrorString:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    goto :goto_1

    .line 135
    .end local v0           #e:Lorg/javia/arity/SyntaxException;
    :cond_1
    iget-object v2, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/calculator2/Logic;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method onUp()V
    .locals 4

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1, v0}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1}, Lcom/android/calculator2/History;->moveToPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/calculator2/Logic;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v2, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v2}, Lcom/android/calculator2/History;->getText()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/calculator2/CalculatorDisplay$Scroll;->DOWN:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    invoke-virtual {v1, v2, v3}, Lcom/android/calculator2/CalculatorDisplay;->setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V

    .line 149
    :cond_1
    return-void
.end method

.method setLineLength(I)V
    .locals 0
    .parameter "nDigits"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/calculator2/Logic;->mLineLength:I

    .line 60
    return-void
.end method

.method updateHistory()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/calculator2/Logic;->mHistory:Lcom/android/calculator2/History;

    invoke-direct {p0}, Lcom/android/calculator2/Logic;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calculator2/History;->update(Ljava/lang/String;)V

    .line 163
    return-void
.end method
