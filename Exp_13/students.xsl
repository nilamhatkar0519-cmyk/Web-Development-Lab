<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
    <title>Student Application</title>
</head>

<body style="font-family: Arial;">

<h2 style="color:blue;">Student Application Dashboard</h2>

<table border="1" cellpadding="8" cellspacing="0">
<tr bgcolor="#4CAF50" style="color:white;">
    <th>ID</th>
    <th>Name</th>
    <th>Course</th>
    <th>Year</th>
    <th>Marks</th>
    <th>Status</th>
</tr>

<xsl:for-each select="students/student">

<tr>
    <td><xsl:value-of select="@id"/></td>
    <td><xsl:value-of select="name"/></td>
    <td><xsl:value-of select="course"/></td>
    <td><xsl:value-of select="year"/></td>
    <td><xsl:value-of select="marks"/></td>

    <!-- Condition -->
    <td>
        <xsl:choose>
            <xsl:when test="marks &gt;= 75">
                Pass
            </xsl:when>
            <xsl:otherwise>
                Fail
            </xsl:otherwise>
        </xsl:choose>
    </td>
</tr>

</xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>