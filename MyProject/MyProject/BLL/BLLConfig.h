//
//  BLLConfig.h
//  Project
//
//  Created by sike on 13-7-30.
//  Copyright (c) 2013年 sike. All rights reserved.

#define Project_BLLConfig_h



//http常用四种方法
#define kGET                @"GET"
#define kPUT                @"PUT"
#define kPOST               @"POST"
#define kDELETE             @"DELETE"


//http文件上传类型
#define kDataType           @"DataType"
#define kFieldType          @"FieldType"

//测试地址
#define kWebSiteURL @"http://test.tianpingpai.com/"


//正式服务器测试地址
//#define kWebSiteURL @"http://release.tianpingpai.com/"

////正式服务器
//#define kWebSiteURL @"http://api.tianpingpai.com/"
//
////积分商城
//#define kIntegralURL @"http://m.tianpingpai.com/"
#define kIntegralURL @"http://test.tianpingpai.com/"


/**
 * @brief 网络请求参数
 */
#pragma mark-
#pragma mark Request Methods-
//请求参数


//*******************************1.0接口****************************************

#define kVersionCheck       @"api/version/getVersion.json"                          //检测版本号

//---------------用户接口---------------
#define kUsercheck           @"api/verify/check"
#define kUserLogin           @"api/user/login.json"                                 //登录接口
#define kRegister            @"api/user/register.json"                              //注册接口
#define kUserLogin           @"api/user/login.json"                                 //登录接口
#define kVerifyCode          @"api/verify/sendVerifyCode.json"                      //验证接口
#define kResetPassWord       @"api/user/resetPwd.json"                              //重置密码
#define kUpdatePassWord      @"api/user/updatePwd.json"                             //修改用户密码
#define kUpdateDisplayname   @"api/user/updateBuyUserInfo.json"                     //修改用户信息
#define kGetTradeInfo        @"api/user/account/list"                               //获取用户交易信息

#define kPushUser            @"api/user/registTerminal.json"                        //推送用户
#define kGetOrderCount       @"api/user/getOrderCounts.json"                        //订单数


#define kUserCollectShop     @"api/favorite/getBuyFavoriteListInfo.json"            //用户收藏店铺
#define kUserAddShop         @"api/favorite/addFavoriteSaler.json"                  //用户增加店铺
#define kUserDelShop         @"api/favorite/delFavoriteSaler.json"                  //用户删除店铺

//---------------公共接口---------------
#define kGetServerAddress    @"api/area/getAreaDataList.json"                       //预先得到服务器返回的地址
#define kGetAllAddress       @"api/area/getAll.json"                                //获取所有地区（包括其下所有级别）
#define kGetCategoryList     @"api/category/getCategoryDataList.json"               //获取商品一二级全部分类信息接口
#define kGetClassification   @"api/category/getProdFirstDataList.json"              //获取分类信息


#define kGetUserInfo         @"api/user/getBuyUserDetailInfo.json"                  //获取某一买家用户信息
#define kUpdataUserInfo      @"api/user/updateBuyerUserInfo.json"                   //修改买家用户信息
#define kSelectBusiness      @"api/market/list"

//---------------地址接口---------------
#define kAddUserAddr         @"api/user/addUserAddr.json"                            //添加买家用户收货地址
#define kUpdataUserAddr      @"api/user/updateUserAddr.json"                         //修改买家用户收货地址
#define kDelUserAddr         @"api/user/delUserAddr.json"                            //删除买家用户收货地址
#define kGetArea             @"api/area/getAreaDataList.json"                        //地区接口

//---------------订单接口---------------
#define kGetOrderInfo        @"api/order/getOrderListInfo.json"                      //查询订单
#define kOrderDetailInfo     @"api/order/getOrderDetailInfo.json"                    //查询某一订单接口
#define kTraceOrderInfo      @"api/order/getOrderTraceInfo.json"                     //获取某一订单轨迹
#define kAddOrder            @"api/order/add.json"                                  //增加订单
#define kcancleOrder         @"api/order/delOrder.json"                              //取消订单
#define kUpdataOrderState    @"api/order/updateOrderStatus.json"                     //修改订单状态
#define kPayAlipay           @"pay/wap/alipay"                                       //订单 支付宝支付

//---------------评论接口----------------
#define kAddComment          @"api/comment/add"                                      //提交评论
#define kGetCommentList      @"api/comment/list"                                     //查看评论
#define kGetCommentNum       @"api/comment/statistic"                                //获取评论数量 


//---------------一键下单接口---------------
#define kCategoryListInfo       @"api/fastorder/getSaleCategoryListInfo.json"        //获取用户一键下单商品分类接口
#define kCategoryOrder          @"api/fastorder/fastOrder.json"                      //一键下单接口
#define kGenerateShoppingCart   @"api/shopping/generateShopCart.json"                //生成购物车接口


//---------------订菜商铺接口---------------
#define kSaleListInfo       @"api/user/getRecommendSaler.json"                      //根据食材分类获取卖家用户列表接口
#define kSearchProdList     @"api/search/searchProd.json"                           //搜索菜品接口
#define kSellerShopList     @"api/prod/getSaleProdListInfo.json"                    //查询卖家商品信息接口
#define kUserShopList       @"api/prod/commonuse.json"                              //该店铺买家常用列表
#define kUserAddShopList    @"api/prod/addCommonuse.json"                           //该店铺买家增加常用列表
#define kUserDelShopList    @"api/prod/delCommonuse.json"                           //该店铺买家删除常用列表

#define kGetProductInfo     @"api/prod/detail"                  //某一商品详情
#define kShopListInfo       @"api/prod/getSaleUserProdListInfo.json"                //店铺信息 一次性返回


//---------------统计接口-------------------
#define kGetBuyerStatistics      @"api/statistics/getBuyerStatistics.json"           //买家统计


//---------------消息接口-------------------
#define kGetMessageInfo     @"api/msg/getMsgInfo.json"                              //消息接口


//---------------首页接口-------------------
#define kGetIndexInfo     @"api/dashboard/main"                                     //获取APP首页信息


//----------------红包接口-------------------
#define kRedPacketList     @"api/coupon/list"                                       //红包列表信息

//----------------我的账单-------------------
#define kGetAccountList    @"api/user/account/list"                                 //我的账单列表



/******************************1.10版本 ****************************************/
#define kMultiProdListInfo      @"api/shop/getMultiShopProdList.json"               //查询综合店铺商品信息接口

#define kCollectMultiShopInfo   @"api/shop/getMultiShopInfo.json"                   //收藏进入综合店铺
#define kAddCommonuse           @"api/prod/addCommonuse.json"                       //增加店铺常用清单

/******************************1.21版本 ****************************************/

#define kFavoriteCollectShop    @"api/favorite/getShopIsFavorite.json"              //判断当前店铺是否收藏过
#define kGetFlankShopInfo       @"api/shopinfo/getShopInfo.json"                    //侧滑 商品侧滑信息接口

/******************************1.22版本 ****************************************/
#define kActivityDetail         @"api/activity/get"                                 //获取活动详情
#define kActivitySign           @"api/activity/join"                                //活动报名接口

/******************************1.4版本 ****************************************/
#define kGetNewShopInfo         @"api/shopinfo/getShopDetail.json"                  //获取店铺信息接口
#define kGetNewShopList         @"api/shopinfo/getRelatedShops.json"                //获取相关店铺数量


/******************************1.5.1版本 ****************************************/
#define kShoppPromotions        @"api/shop/promotions"                              //店铺促销活动信息
#define kWeiXinPayOrderIds      @"pay/mobile/weixin/prepay"                         //微信付款链接
#define kAlipayPayOrderIds      @"pay/mobile/alipay/prepay"                         //支付宝付款链接

#define kOrderPrepay            @"api/order/pay"                                    //订单去支付接口
#define kInvitation             @"apply/buyer/invitation"                           //邀请码链接



/******************************1.7.0版本 ****************************************/


#define kPayWaylist             @"api/payway/list"                                //不同地区默认不同的支付方式
#define kTicketCreate           @"api/ticket/create"                              //验证重复提交订单
#define kMergeConfirm           @"api/order/confirm"                              //确认订单接口合并接口
#define kCancelOrder            @"api/order/buyer_cancel.json"                    //取消订单接口
#define kErrorInfo              @"api/collect/app_error"                          //错误信息反馈


/******************************2.1版本 ****************************************/
#define kApplyBonus              @"apply/bonus/coupon"                          //错误信息反馈
#define kShopcart_check          @"api/sales/shopcart_check"                    //提交购物车校验促销商品

/******************************2.2版本 ****************************************/

#define kIntegralShop           @"app/score/integral/shop"                      //积分商城
#define kIntegralQuert          @"app/score/my/integral"                        //积分明细
#define kIntegralOrder          @"app/score/exchange/list"                      //积分商城订单


/******************************2.3版本 ****************************************/

#define kShoppingCartList       @"api/shoppingCart/list"                        //购物车列表
#define kAddShopping            @"api/shoppingCart/add"                         //增加商品到购物车
#define kUpdateShopping         @"api/shoppingCart/update"                      //更新购物车数据
#define kDeleteShopping         @"api/shoppingCart/delete"                      //删除购物车数据

#define kFavourite              @"api/prod/favourite"                           //获取蔬菜收藏数据
#define KBuyFavoriteListInfo    @"api/favorite/getBuyFavoriteListInfo.json"     //获取店铺收藏数据
#define KDeleteFavorite         @"api/favorite/delete"                          //删除收藏 商品、店铺

#pragma mark-
#pragma mark UserInfo Methods-



#define kBusinessInfo                @"BusinessInfo"                            //商圈




#define kSystemAlert                  @"SystemAlert"                            //系统提示 
#define kSaveUserInfo                 @"saveUserInfo"                           //用户存储信息
#define kSystemInfo                   @"systemInfo"                             //系统信息
#define kShoppingInfo                 @"ShoppingInfo"                           //购物车信息
#define kEquipIdInfo                  @"EquipIdInfo"                            //系统唯一标示 


#define kPrefabricateDictInfo         @"PrefabricateDictInfo"                   //预制购物车信息字典
#define kVersionDictInfo              @"VersionDictInfo"                        //版本信息






