.class Lcom/android/calculator2/CalculatorDisplay;
.super Landroid/widget/ViewSwitcher;
.source "CalculatorDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/CalculatorDisplay$Scroll;
    }
.end annotation


# static fields
.field private static final ACCEPTED_CHARS:[C


# instance fields
.field inAnimDown:Landroid/view/animation/TranslateAnimation;

.field inAnimUp:Landroid/view/animation/TranslateAnimation;

.field private mComputedLineLength:Z

.field private mLogic:Lcom/android/calculator2/Logic;

.field outAnimDown:Landroid/view/animation/TranslateAnimation;

.field outAnimUp:Landroid/view/animation/TranslateAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "0123456789.+-*/\u2212\u00d7\u00f7()!%^"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/CalculatorDisplay;->ACCEPTED_CHARS:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calculator2/CalculatorDisplay;->mComputedLineLength:Z

    .line 53
    return-void
.end method

.method static synthetic access$000()[C
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/calculator2/CalculatorDisplay;->ACCEPTED_CHARS:[C

    return-object v0
.end method

.method private getNumberFittingDigits(Landroid/widget/TextView;)I
    .locals 5
    .parameter "display"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v4

    sub-int v0, v3, v4

    .line 77
    .local v0, available:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 78
    .local v2, paint:Landroid/graphics/Paint;
    const-string v3, "2222222222"

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x4120

    div-float v1, v3, v4

    .line 79
    .local v1, digitWidth:F
    int-to-float v3, v0

    div-float/2addr v3, v1

    float-to-int v3, v3

    return v3
.end method


# virtual methods
.method getEditText()Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    return-object p0
.end method

.method getSelectionStart()I
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 177
    .local v0, text:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    return v1
.end method

.method getText()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 144
    .local v0, text:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    return-object v1
.end method

.method insert(Ljava/lang/String;)V
    .locals 3
    .parameter "delta"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 134
    .local v1, editor:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 135
    .local v0, cursor:I
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 136
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onFinishInflate()V

    .line 58
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/calculator2/Calculator;

    .line 59
    .local v0, calc:Lcom/android/calculator2/Calculator;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorDisplay;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/calculator2/Calculator;->adjustFontSize(Landroid/widget/TextView;)V

    .line 60
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorDisplay;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/android/calculator2/Calculator;->adjustFontSize(Landroid/widget/TextView;)V

    .line 61
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "gain"
    .parameter "direction"
    .parameter "prev"

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->requestFocus()Z

    .line 186
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 65
    invoke-super/range {p0 .. p5}, Landroid/widget/ViewSwitcher;->onLayout(ZIIII)V

    .line 66
    iget-boolean v0, p0, Lcom/android/calculator2/CalculatorDisplay;->mComputedLineLength:Z

    if-nez v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/calculator2/CalculatorDisplay;->getNumberFittingDigits(Landroid/widget/TextView;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/calculator2/Logic;->setLineLength(I)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calculator2/CalculatorDisplay;->mComputedLineLength:Z

    .line 70
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldW"
    .parameter "oldH"

    .prologue
    const-wide/16 v3, 0x1f4

    const/4 v2, 0x0

    .line 121
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p2

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimUp:Landroid/view/animation/TranslateAnimation;

    .line 122
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 123
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v1, p2

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimUp:Landroid/view/animation/TranslateAnimation;

    .line 124
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 126
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v1, p2

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimDown:Landroid/view/animation/TranslateAnimation;

    .line 127
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 128
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p2

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimDown:Landroid/view/animation/TranslateAnimation;

    .line 129
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 130
    return-void
.end method

.method protected setLogic(Lcom/android/calculator2/Logic;)V
    .locals 5
    .parameter "logic"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/calculator2/CalculatorDisplay;->mLogic:Lcom/android/calculator2/Logic;

    .line 84
    new-instance v0, Lcom/android/calculator2/CalculatorDisplay$1;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorDisplay$1;-><init>(Lcom/android/calculator2/CalculatorDisplay;)V

    .line 104
    .local v0, calculatorKeyListener:Landroid/text/method/NumberKeyListener;
    new-instance v1, Lcom/android/calculator2/CalculatorEditable$Factory;

    invoke-direct {v1, p1}, Lcom/android/calculator2/CalculatorEditable$Factory;-><init>(Lcom/android/calculator2/Logic;)V

    .line 105
    .local v1, factory:Landroid/text/Editable$Factory;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    .line 106
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorDisplay;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 107
    .local v3, text:Landroid/widget/EditText;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 109
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v3           #text:Landroid/widget/EditText;
    :cond_0
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorDisplay;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorDisplay;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 117
    return-void
.end method

.method setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V
    .locals 3
    .parameter "text"
    .parameter "dir"

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 149
    sget-object p2, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    .line 152
    :cond_0
    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    if-ne p2, v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorDisplay;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 154
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorDisplay;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 164
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 167
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->showNext()V

    .line 168
    return-void

    .line 155
    .end local v0           #editText:Landroid/widget/EditText;
    :cond_1
    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->DOWN:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    if-ne p2, v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorDisplay;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 157
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorDisplay;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorDisplay;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 160
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorDisplay;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
