<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html {
	background: url('./images/main.jpg') no-repeat center center fixed;
	background-size: cover;
}

body {
    margin: 0;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
}

nav ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}

nav ul li {
    --c: white;
    color: var(--c);
    font-size: 16px;
    border: 0.3em solid var(--c);
    border-radius: 0.5em;
    width: 12em;
    height: 3em;
    text-transform: uppercase;
    font-weight: bold;
    font-family: sans-serif;
    letter-spacing: 0.1em;
    text-align: center;
    line-height: 3em;
    position: relative;
    overflow: hidden;
    z-index: 1;
    transition: 0.5s;
    margin: 1em;
}

nav ul li span {
    position: absolute;
    width: 25%;
    height: 100%;
    background-color: var(--c);
    transform: translateY(150%);
    border-radius: 50%;
    left: calc((var(--n) - 1) * 25%);
    transition: 0.5s;
    transition-delay: calc((var(--n) - 1) * 0.1s);
    z-index: -1;
}

nav ul li:hover {
	cursor: pointer;
    color: black;
}

nav ul li:hover span {
    transform: translateY(0) scale(2);
}

nav ul li span:nth-child(1) {
    --n: 1;
}

nav ul li span:nth-child(2) {
    --n: 2;
}

nav ul li span:nth-child(3) {
    --n: 3;
}

nav ul li span:nth-child(4) {
    --n: 4;
}
</style>
</head>
<body>
<nav>
  <ul>
    <li onclick="location.href='./teamStat.do'">
    	스탯
    	<span></span><span></span><span></span><span></span>
    </li>
    <li>
      자유게시판
      <span></span><span></span><span></span><span></span>
    </li>
    <li onclick="location.href='./videoList.do'">
      동영상
      <span></span><span></span><span></span><span></span>
    </li>
  </ul>
</nav>
</body>
</html>