<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Student Information</title>
                <style>
                    /* Overall page styling */
                    body {
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        background-color: #f5f7fb;
                        margin: 40px;
                        color: #333;
                    }
                    h1 {
                        text-align: center;
                        color:rgb(0, 0, 0);
                        margin-bottom: 20px;
                    }
                    
                    /* Table Styling */
                    table {
                        width: 100%;
                        border-collapse: collapse;
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                        background-color: #ffffff;
                    }
                    th, td {
                        text-align: left;
                        padding: 12px 15px;
                        border: 1px solid #ddd;
                    }

                    /* Table header styling */
                    th {
                        background-color:rgb(0, 114, 105);
                        color: white;
                        font-size: 16px;
                        font-weight: bold;
                        text-transform: uppercase;
                    }

                    /* Table row styling */
                    tr {
                        background-color: #f9f9f9;
                    }

                    tr:hover {
                        background-color: #f1f1f1;
                    }

                    /* Hover effect on rows */
                    tr:hover td {
                        color:rgb(0, 114, 105);
                        cursor: pointer;
                    }
                    
                    /* Responsive design for smaller screens */
                    @media only screen and (max-width: 600px) {
                        table {
                            font-size: 14px;
                        }
                        th, td {
                            padding: 10px;
                        }
                    }

                </style>
            </head>
            <body>
                <h1>Student Information</h1>
                <table>
                    <thead>
                        <tr>
                            <th>Student Name</th>
                            <th>Father Name</th>
                            <th>Student ID</th>
                            <th>Phone</th>
                            <th>Email</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="class/student">
                            <tr>
                                <td><xsl:value-of select="name"/></td>
                                <td><xsl:value-of select="FatherName"/></td>
                                <td><xsl:value-of select="StudentID"/></td>
                                <td><xsl:value-of select="phone"/></td>
                                <td><xsl:value-of select="email"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
