<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html" encoding="utf-8" indent="yes" />

<xsl:template match="/">
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <title>Hisn al-Muslim</title>
  <style>
    *{font-family: sans-serif;}
    .arabic{
      font-family: "Traditional Arabic";
      font-size: 2.5em;
      text-align: right;
    }
    .reference{color:brown}
  </style>
</head>
<body>
  <h1>Hisn al-Muslim</h1>
  <ol>
    <xsl:for-each select="hisnulmuslim/group">
      <li>
        <h2><xsl:value-of select="title"/></h2>
        <ol>
          <xsl:for-each select="dua">
            <li>
              <div class="arabic">
                <xsl:value-of select="arabic"/>
              </div>
              <div class="translation">
                <xsl:value-of select="translation"/>
              </div>
              <div class="reference">
                <xsl:value-of select="reference"/>
              </div>
            </li>
            <hr/>
          </xsl:for-each>
        </ol>
      </li>
    </xsl:for-each>
  </ol>

</body>
</html>

</xsl:template>

</xsl:stylesheet>