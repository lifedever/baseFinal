<%@tag pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<%@ attribute name="menu" description="菜单" required="true" %>
<div class="fix-header">
    <div class="container margin20-t">
        <div class="row">
            <div class="span12">
                <a class="logo pull-left" href="/"></a>

                <div class="pull-right margin40-t">
                    <c:choose>
                        <c:when test="${!empty(member_session_login)}">
                            欢迎回来： ${member_session_login.username} |
                            <a href="${ctx}/member/logout" class="color-black"><span>退出</span></a>
                        </c:when>
                        <c:otherwise>
                            <a href="${ctx}/member/login" class="color-black"><span>登录</span></a> |
                            <a href="${ctx}/member/signup" class="color-black"><span>注册</span></a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </div>
    <div class="border"></div>
    <div class="container margin20-t margin50-b">
        <div class="row">
            <div class="span12">
                <ul class="menu">
                    <li class="<c:if test="${menu eq 'brand'}">active</c:if>" data-target="s1">
                        <a href="${ctx}/brand">品牌介绍</a>
                        <ul class="s-menu s1">
                            <li>
                                <a href="${ctx}/brand">品牌故事</a>
                            </li>
                            <li>
                                <a href="${ctx}/brand/shop">门店位置</a>
                            </li>
                            <li>
                                <a href="${ctx}/brand/joinus">加入我们</a>
                            </li>
                            <li class="lastItem">
                                <a style="border-bottom: 0px;" href="${ctx}/brand/affiliate">加盟</a>
                            </li>
                        </ul>
                    </li>
                    <li class="<c:if test="${menu eq 'season'}">active</c:if>" data-target="s2">
                        <a href="${ctx}/season/">当季推荐</a>
                        <ul class="s-menu s2">
                            <c:forEach items="${tuijians}" var="tuijian" varStatus="i">
                            <li>
                                <a href="${ctx}/season/${tuijian.id}">${tuijian.title}</a>
                            </li>
                            </c:forEach>

                        </ul>
                    </li>
                    <li class="<c:if test="${menu eq 'product'}">active</c:if>" data-target="s3">
                        <a href="${ctx}/product/大衣">产品介绍</a>
                        <ul class="s-menu s3">
                            <c:forEach items="${gTypes}" var="type">
                                <li>
                                    <a href="${ctx}/product/${type}">${type}</a>
                                </li>
                            </c:forEach>

                        </ul>
                    </li>
                    <li class="<c:if test="${menu eq 'news'}">active</c:if>" data-target="s4">
                        <a href="${ctx}/news/news">最新资讯</a>
                        <ul class="s-menu s4">
                            <li>
                                <a href="${ctx}/news/news">最新资讯</a>
                            </li>
                            <li>
                                <a href="${ctx}/news/video">宣传视频</a>
                            </li>
                            <li>
                                <a href="${ctx}/album">搭配图集</a>
                            </li>

                            <li class="lastItem">
                                <a style="border-bottom: 0px;" href="${ctx}/news">时尚动态</a>
                            </li>
                        </ul>
                    </li>
                    <li class="<c:if test="${menu eq 'support'}">active</c:if>" data-target="s5">
                        <a href="${ctx}/support/vip">合作支持</a>
                        <ul class="s-menu s5">
                            <li>
                                <a href="${ctx}/support/vip">唯品会</a>
                            </li>
                            <li class="lastItem">
                                <a style="border-bottom: 0px;" href="${ctx}/support/tmall">天猫</a>
                            </li>
                        </ul>
                    </li>
                    <li class="<c:if test="${menu eq 'member'}">active</c:if>" data-target="s6">
                        <a style="border-right: 0px;" href="${ctx}/member/callus">会员中心</a>
                        <ul class="s-menu s6">
                            <li>
                                <a href="${ctx}/member/callus">联系我们</a>
                            </li>
                            <li>
                                <a href="${ctx}/member/faq">常见问题</a>
                            </li>
                            <li class="lastItem">
                                <a style="border-bottom: 0px;" href="${ctx}/member/signup">会员注册</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>