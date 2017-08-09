
#CustomNavigation
自定制导航栏

***需要自定制导航栏的控制器，需要继承XDNavigationViewController。

    - (void)setMainNavigationBarHaveBack:(BOOL)back;
    调用这个方法来初始化视图控制器的导航栏，每个视图控制器均需要。如果该视图控制器不需要导航栏，可以不调用这个方法。用back来控制是否有左侧返回按钮。

    - (void)initTitleViewWithText:(NSString *)title;
    这方法来设置导航栏上的title，标题均是居中显示

    - (void)initRightNavigationBarWithImageName:(NSString *)imageName highLightImageName:(NSString *)highLightImageName;
    调用这个方法可以自定制导航栏右侧按钮，右侧按钮的点击动作，你需要重写下面这个方法
    - (void)navRightButtonItemPressed;

    - (void)navLeftButtonItemPressed;
    左侧按钮点击，执行返回上一页功能，你也可以重写这个方法，对左侧按钮点击再添加其他执行动作

    - (void)hideLeftNavigationItem;
    这个方法可以隐藏左侧按钮


![Image text](https://github.com/celiaDeveloper/CustomNavigationInherit/blob/master/Screenshots/image1.png)


![Image text](https://github.com/celiaDeveloper/CustomNavigationInherit/blob/master/Screenshots/image2.png)


![Image text](https://github.com/celiaDeveloper/CustomNavigationInherit/blob/master/Screenshots/image3.png)


![Image text](https://github.com/celiaDeveloper/CustomNavigationInherit/blob/master/Screenshots/image4.png)

