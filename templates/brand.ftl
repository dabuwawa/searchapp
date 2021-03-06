<#assign TDK = searchObj.content.seoData>
<#assign REQ = searchObj.header.searchReq>
<#assign quession = "${(TDK.question)?if_exists}${(TDK.catName)?if_exists}">
<#assign pageSelectData = searchObj.content.selectData>
<#assign isCatId = "${(isCatId)!}">
<#if isCatId=="Y">
    <#assign brandName = "${(pageSelectData.keywords)!}${(pageSelectData.category.third.name)!}">
<#else>
    <#assign brandName = "${(pageSelectData.keywords)!}">
</#if>
<#if TDK.XSearch>
    <#if isCatId=="Y">
        <#assign title = "${brandName!}官网提供${brandName!}大全及${brandName!}官网报价-国美在线">
        <#assign description ="国美在线${brandName!}官网提供${brandName!}最新商品,查看最新${brandName!}官网报价,网购就到国美在线${brandName!}大全产品专区"  >
        <#assign keywords = "${brandName!},${brandName!}大全, ${brandName!}官网,${brandName!}官网报价">
    <#else>
        <#assign title = "${brandName!}官网提供${brandName!}大全及${brandName!}官网报价-国美在线">
        <#assign description ="国美在线${brandName!}官网提供${brandName!}最新商品,查看最新${brandName!}官网报价,网购就到国美在线${brandName!}大全产品专区"  >
        <#assign keywords = "${brandName!},${brandName!}大全,${brandName!}官网,${brandName!}官网报价">
    </#if>
</#if>

<#if pageSelectData.facets.catfacets?? && pageSelectData.facets.catfacets.id??>
    <#assign href_url = "http://m${(storeConfiguration.cookieDomain)!}/brand/${pageSelectData.brandId!}-${pageSelectData.facets.catfacets.id!}.html">
<#else>
    <#assign href_url = "http://m${(storeConfiguration.cookieDomain)!}/brand/${pageSelectData.brandId!}-0.html">
</#if>
<#include "module/variable.ftl" >
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${title!}</title>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta name="applicable-device" content="pc">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta name="description" content="${description!}">
    <meta name="Keywords" content="${keywords!}">
    <meta property="qc:admins" content="2500556177677556375636"/>
    <meta name="mobile-agent"  content="format=html5; url=${href_url!}">
<#if isCatId=="Y">
    <link rel="canonical" href="http://brand${(storeConfiguration.cookieDomain)!}/${(pageSelectData.brandId)?if_exists}-${(searchObj.content.seoData.catId)!}.html"/>
<#else>
    <link rel="canonical" href="http://brand${(storeConfiguration.cookieDomain)!}/${(pageSelectData.brandId)?if_exists}-0.html"/>
</#if>

    <link rel="alternate" media="only screen and(max-width:640px)" href="${href_url!}"/>

    <link rel="shortcut icon" href="//app.gomein.net.cn/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href='${(storeConfiguration.stageCssServer)!}/??<!--# include virtual="/n/common/default/css.html"-->'>
    <link rel="stylesheet" href="${(storeConfiguration.stageCssServer)!}/??/css/n/detail/gCity.min.css,/search/search2016/css/search2015.min.css,/f2ecss/stage/overseasbuy/overseas-basic.min.css?${jsCssVersion!}">
<!--# include virtual="/n/common/global/global.html"-->
</head>
<body data-page="brand">
<#--nginx  -->
<!--# include virtual="/n/common/default/head.html"-->
<#--在本地测试环境引入公共头-->
<#--<#include "static/header.html">-->
<#if searchObj.content.pageBar.totalCount != 0>
    <#--facets展示 -->
    <div class="layout crumb">
        <ul class="crumb-list crumb-list-brand" modelid="9000000100">
            <li><a href="http://brand${(storeConfiguration.cookieDomain)!}" data-code="9000000100-0">全部品牌</a><i class="crumbArrow">&nbsp;&gt;&nbsp;</i></li>
            <#if isCatId=="Y">
                <li><a href="http://brand${(storeConfiguration.cookieDomain)!}/${(pageSelectData.brandId)?if_exists}-0.html" data-code="9000000100-1">${(pageSelectData.keywords)?if_exists}</a><i class="crumbArrow">&gt;</i></li>
                <li>${brandName!}</li>
            <#else>
                <li>${brandName!}</li>
            </#if>
        </ul>
        <script>
            document.getElementById("keyLabel").setAttribute("default","${brandName!},1",1);
            document.getElementById("keyLabel").innerHTML = "${brandName!}";
        </script>
        <div style="display:none">
            <#if (searchObj.content.selectData.category.fir)??>
                <span class="firstmenu" style="display:none">${(pageSelectData.category.fir.name)!}</span>
            </#if>
            <#if (searchObj.content.selectData.category.third)??>
                <span class="thirdmenu" style="display:none">${(pageSelectData.category.third.name)!}</span>
            </#if>
        </div>
    </div>
    <div class="brand-wrap layout">
        <#if isCatId=="Y">
            <div class="brand-info">
                <h1 class="title">${(pageSelectData.keywords)?if_exists}${(pageSelectData.category.third.name)?if_exists}</h1>
                <div class="brand-detail">
                    <span>国美在线${(pageSelectData.keywords)?if_exists}品牌专区，为您购买${brandName!}相关商品提供报价、评价信息。</span>
                    <#if (pageSelectData.ecBrandId)?? && isCatId=="Y">
                        <span class="link"><a target="_blank" href="http://offer${(storeConfiguration.cookieDomain)!}/price-${(pageSelectData.category.third.id)?if_exists}-${(pageSelectData.ecBrandId)?if_exists}.html"><em>${brandName!}</em>报价</a><a target="_blank" href="http://comment${(storeConfiguration.cookieDomain)!}/comment-${(pageSelectData.category.third.id)?if_exists}-${(pageSelectData.ecBrandId)?if_exists}.html"><em>${brandName!}</em>评价</a></span>
                    <#else>
                        <span class="link"><a target="_blank" href="http://offer${(storeConfiguration.cookieDomain)!}/price-${(pageSelectData.category.third.id)?if_exists}.html"><em>${brandName!}</em>报价</a><a target="_blank" href="http://comment${(storeConfiguration.cookieDomain)!}/comment-${(pageSelectData.category.third.id)?if_exists}.html"><em>${brandName!}</em>评价</a></span>
                    </#if>
                </div>
            </div>
        <#else>
            <div class="brand-info">
                <h1 class="title">${brandName!}</h1>
                <div class="brand-detail">国美在线${(pageSelectData.keywords)?if_exists}品牌专区，为您购买${brandName!}品牌相关商品提供报价、评价信息。</div>
            </div>
        </#if>
    </div>
    <#--facets展示 -->
    <div class="nSearchWarp nSearch-facets">
        <#include "module/facet_hot_relevant.ftl">
        <#include "module/facet_common.ftl">
    </div>
    <#--页面商品列表主体-->
    <div class="nSearchWarp">
        <div class="nSearchWarp-main">
            <div class="product-right-box">
                <#include "module/prd_right.ftl" >
            </div>
            <div class="product-left-list" id="product-left">
                <#include "module/toolbar.ftl">
                <#include "module/prdlist.ftl">
            </div>
        </div>
    </div>
    <div class="nSearchWarp">
        <#--猜你喜欢的商品-->
        <#include "module/bottom_mayBeLike.ftl">
        <#--最近浏览商品-->
        <#include "module/bottom_recentVisit.ftl">
    </div>
<#else>
    <div class="brandNoResult layout" style="height:150px; text-align:center;border:1px solid #e0e0e0; margin:10px auto; line-height:150px; color:#5e5e5e">非常抱歉，此页面无<b style="color:#06c">${brandName!}</b>相关商品，更多内容请访问：<a href="http://brand.gome.com.cn/" style="color:#06c;">品牌大全</a></div>
    <div class="nSearchWarp">
        <div id="related-list" style="display: none"><div id="prd-right-hot"></div></div>
        <div id="product-left"><div id="filter-box"></div><div id="filter-bottom"></div></div>
        <div id="personrecommend-warp" style="display:none"><div id="personrecommend" class="personrecommend prd-right-normal"></div></div>
        <#--底部热销-->
        <#include "module/bottom_hotSale.ftl">
        <#--最近浏览商品-->
        <#include "module/bottom_recentVisit.ftl">
    </div>
</#if>
<div id="search_info_box" style="display:none">
    <div id="searchReq">${searchReq!}</div>
    <div id="pageType">${pageType!}</div>
</div>
<#--nginx-->
<!--# include virtual="/n/common/default/aside.html"-->
<!--# include virtual="/n/common/default/foot.html"-->
<!--#include virtual="/n/common/default/aside.html"-->
<#--在本地测试环境引入公共尾-->
<#--<#include "static/footer1.html">-->

<script>
    var productId_list = "";
    var keyword = "${(searchObj.content.seoData.catName)?default('平板电视')}";
    var order = [];
    var orderby=""
</script>
<script type="text/javascript">
    var isHyg = false//${(storeConfiguration.isHwg)!};
    var searchSite = '${(storeConfiguration.searchSite)!}';
    var timerLazyload = null;
    var interVal = null;
    <#if asyncPrice>
        var asyncPrice = true;
    <#else>
        var asyncPrice = false;
    </#if>
</script>
<#include "module/pagejs.ftl">
<script>
<#if asyncPrice>
clearInterval(interVal)
timerLazyload = setInterval(priceInterval,1000)
<#else>
clearInterval(timerLazyload)
interVal=setInterval(nomalInterval,1000);   
</#if>
    $(function(){
        var prods_li = $("#prodByAjax ul.products li:lt(10)");
        $.each(prods_li,function(i,item){
            if(i>0){
                productId_list = productId_list + "," + $(item).attr("g-li");
            }else{
                productId_list = productId_list + $(item).attr("g-li");
            }
        });
        if($("#filterBox a.cur").attr("track")!=undefined){
            order = $("#filterBox a.cur").attr("track").split(":");
        }
        orderby = order[2];

//        gomeJsConfig.customConfig = {
//            jsMerge:[
//                { id : "searchMerge",mergeJs : ["gCity","uc_pager","gomeLib","template","gLoad"]}
//            ]
//        };

        //各种埋码
        window.setTimeout(function(){
            s.pageName="商品列表:品牌大全:${(pageSelectData.keywords)?if_exists}:${brandName!}";
            s.channel=s.pageName.split(':')[0];
            s.prop1=s.pageName.split(':')[0]+":"+s.pageName.split(':')[1];
            s.prop2=s.pageName.split(':')[0]+":"+s.pageName.split(':')[1]+":"+s.pageName.split(':')[2];
            s.prop3=s.pageName.split(':')[0]+":"+s.pageName.split(':')[1]+":"+s.pageName.split(':')[3];
            s.prop4="品牌列表页";
            s.eVar3="品牌列表页";
            var s_code=s.t();
            if(s_code)document.write(s_code);
        },2000);
    })
</script>
<script>
    (function(){
        var bp = document.createElement('script');
        bp.src = '//push.zhanzhang.baidu.com/push.js';
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>
<script>
    $(function(){
        $(".filter-priceRange-box").css("display","none");
        $(".filter-resultSearch-box").css("display","none");
    })
</script>
</body>
</html>