<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login - Event Room Scheduler</title>
<style>
*{margin:0;padding:0;box-sizing:border-box}body{font-family:"Segoe UI",Arial,sans-serif;background:#f8fafc;color:#1e293b;min-height:100vh}a{text-decoration:none}.navbar{height:72px;background:#fff;border-bottom:1px solid #e2e8f0;display:flex;align-items:center;justify-content:space-between;padding:0 5%}.logo{display:flex;align-items:center;gap:10px;color:#0f172a;font-size:22px;font-weight:700}.logo-icon{width:38px;height:38px;display:flex;align-items:center;justify-content:center;border-radius:9px;background:#2563eb;color:#fff;font-size:15px;font-weight:700}.logo span{color:#2563eb}.back-home{color:#475569;font-size:14px;font-weight:500}.back-home:hover{color:#2563eb}.login-section{min-height:calc(100vh - 72px);display:flex;justify-content:center;align-items:center;padding:45px 20px;background:#f8fafc}.login-container{width:100%;max-width:430px;background:#fff;border:1px solid #e2e8f0;border-radius:12px;padding:40px;box-shadow:0 20px 50px rgba(15,23,42,.08)}.login-header{text-align:center;margin-bottom:30px}.login-icon{width:52px;height:52px;margin:0 auto 18px;display:flex;align-items:center;justify-content:center;border-radius:10px;background:#eff6ff;color:#2563eb;font-size:23px}.login-header h1{color:#0f172a;font-size:27px;margin-bottom:7px}.login-header p{color:#64748b;font-size:14px}.error{display:flex;align-items:center;gap:10px;background:#fef2f2;color:#dc2626;border:1px solid #fecaca;padding:12px 14px;margin-bottom:20px;border-radius:7px;font-size:13px}.error-icon{width:22px;height:22px;flex-shrink:0;display:flex;align-items:center;justify-content:center;border-radius:50%;background:#fee2e2;font-size:12px;font-weight:bold}.form-group{margin-bottom:20px}label{display:block;margin-bottom:7px;color:#334155;font-size:13px;font-weight:600}.input-wrapper{position:relative}.input-icon{position:absolute;left:14px;top:50%;transform:translateY(-50%);color:#94a3b8;font-size:14px}input[type="email"],input[type="password"]{width:100%;height:46px;padding:0 14px 0 41px;border:1px solid #cbd5e1;border-radius:7px;outline:none;background:#fff;color:#1e293b;font-family:inherit;font-size:14px}input:focus{border-color:#2563eb;box-shadow:0 0 0 3px rgba(37,99,235,.1)}button{width:100%;height:46px;margin-top:6px;border:none;border-radius:7px;background:#2563eb;color:#fff;cursor:pointer;font-size:15px;font-weight:600}button:hover{background:#1d4ed8}.divider{display:flex;align-items:center;gap:12px;margin:27px 0 20px;color:#94a3b8;font-size:10px;font-weight:600;letter-spacing:.8px}.divider:before,.divider:after{content:"";height:1px;flex:1;background:#e2e8f0}.security-box{display:flex;align-items:flex-start;gap:10px;padding:13px;background:#f8fafc;border:1px solid #e2e8f0;border-radius:7px}.security-icon{color:#2563eb}.security-box p{color:#64748b;font-size:11px;line-height:1.5}.login-footer{text-align:center;margin-top:24px;color:#94a3b8;font-size:11px}@media(max-width:600px){.navbar{height:64px;padding:0 20px}.login-section{min-height:calc(100vh - 64px);padding:30px 16px}.login-container{padding:30px 24px}.logo{font-size:19px}}
</style>
</head>
<body>
<header class="navbar">
<a href="${pageContext.request.contextPath}/index.jsp" class="logo"><div class="logo-icon">ES</div>Event<span>Sync</span></a>
<a href="${pageContext.request.contextPath}/index.jsp" class="back-home">← Back to Home</a>
</header>
<main class="login-section">
<div class="login-container">
<div class="login-header"><div class="login-icon">🔐</div><h1>Welcome Back</h1><p>Login to your EventSync account</p></div>
<c:if test="${not empty requestScope.errorMessage}"><div class="error"><div class="error-icon">!</div><div><c:out value="${requestScope.errorMessage}"/></div></div></c:if>
<form action="${pageContext.request.contextPath}/login" method="post">
<div class="form-group"><label for="email">Email Address</label><div class="input-wrapper"><span class="input-icon">✉</span><input type="email" id="email" name="email" placeholder="Enter your email" required></div></div>
<div class="form-group"><label for="password">Password</label><div class="input-wrapper"><span class="input-icon">🔒</span><input type="password" id="password" name="password" placeholder="Enter your password" required></div></div>
<button type="submit">Login →</button>
</form>
<div class="divider">SECURE ACCESS</div>
<div class="security-box"><div class="security-icon">🛡</div><p>Your account is protected by secure authentication. Access to EventSync features is based on your assigned user role.</p></div>
<div class="login-footer">© 2026 EventSync · Event &amp; Resource Scheduling Platform</div>
</div>
</main>
</body>
</html>
