<%@ page language="java" import="java.sql.*" pageEncoding="gb2312"%>
<html>
	<body>
	<%!
		String driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/mysql?&useSSL=false&serverTimezone=UTC";
		String user="root";
		String password="123456";
	%>
	<%
    		Class.forName(driver);
			Connection conn = DriverManager.getConnection(url,user,password);
			Statement stat = conn.createStatement();
			String sql = "DELETE FROM test WHERE STUNO='0032'";
			int i = stat.executeUpdate(sql);
			out.println("�ɹ�ɾ��" + i + "��");
			stat.close();
			conn.close();
    %>
	</body>
</html>
