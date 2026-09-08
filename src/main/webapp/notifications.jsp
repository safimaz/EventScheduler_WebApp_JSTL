<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notifications</title>
<style>
*{box-sizing:border-box}body{margin:0;font-family:Arial,sans-serif;background:#f4f6f8}.container{width:80%;max-width:1000px;margin:40px auto}.header{display:flex;justify-content:space-between;align-items:center;margin-bottom:25px}.header h1{margin:0;color:#333}.unread-count{background:#007bff;color:white;padding:8px 14px;border-radius:20px;font-size:14px}.actions{margin-bottom:20px;text-align:right}.btn{border:none;padding:10px 16px;border-radius:5px;cursor:pointer;font-size:14px}.btn-primary{background:#007bff;color:white}.btn-primary:hover{background:#0056b3}.notification-list{display:flex;flex-direction:column;gap:12px}.notification{background:#fff;padding:18px;border-radius:8px;box-shadow:0 2px 6px rgba(0,0,0,.08);display:flex;justify-content:space-between;align-items:center;border-left:5px solid #ccc}.notification.unread{border-left-color:#007bff;background:#eef6ff}.notification-content{flex:1}.notification-message{font-size:16px;color:#333;margin-bottom:8px}.notification-meta{font-size:13px;color:#777}.notification-type{display:inline-block;margin-right:10px;font-weight:bold}.read-status{margin-left:15px}.empty{background:#fff;padding:40px;text-align:center;border-radius:8px;color:#777}.mark-read-form{margin-left:20px}@media(max-width:650px){.container{width:92%}.notification{align-items:flex-start;flex-direction:column;gap:12px}.mark-read-form{margin-left:0}}
</style>
</head>
<body>
<div class="container">
<div class="header"><h1>Notifications</h1><span class="unread-count">Unread: <c:out value="${requestScope.unreadCount}" default="0"/></span></div>
<div class="actions"><form action="${pageContext.request.contextPath}/notifications" method="post"><input type="hidden" name="action" value="markAllRead"><button type="submit" class="btn btn-primary">Mark All as Read</button></form></div>
<div class="notification-list">
<c:choose>
<c:when test="${empty requestScope.notifications}"><div class="empty"><h3>No notifications</h3><p>You don't have any notifications yet.</p></div></c:when>
<c:otherwise>
<c:forEach var="notification" items="${requestScope.notifications}">
<c:set var="unread" value="${notification.isRead eq 'N' or notification.isRead eq 'n'}"/>
<div class="notification ${unread ? 'unread' : ''}">
<div class="notification-content">
<div class="notification-message"><c:out value="${notification.message}"/></div>
<div class="notification-meta"><span class="notification-type"><c:out value="${notification.type}"/></span><span><c:out value="${notification.createdAt}"/></span><span class="read-status"><c:choose><c:when test="${unread}">Unread</c:when><c:otherwise>Read</c:otherwise></c:choose></span></div>
</div>
<c:if test="${unread}"><form action="${pageContext.request.contextPath}/notifications" method="post" class="mark-read-form"><input type="hidden" name="action" value="markRead"><input type="hidden" name="notificationId" value="${notification.notificationId}"><button type="submit" class="btn btn-primary">Mark as Read</button></form></c:if>
</div>
</c:forEach>
</c:otherwise>
</c:choose>
</div>
</div>
</body>
</html>
