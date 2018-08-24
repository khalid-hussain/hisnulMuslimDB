<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:output method="html" encoding="utf-8" indent="yes"/>

  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8"/>
        <title>Hisn al-Muslim</title>
        <style>
          ol.dua {
              list-style-type: none;
          }
          
          ol.dua li:before {
              counter-increment: mycounter;
              content: counter(mycounter) ".\00A0\00A0";
          }
          
          ol.dua li {
              text-indent: -1.3em;
          }
          
          ol.start {
              counter-reset: mycounter;
          }
          
          * {
              font-family: "Nunito Sans", "Open Sans", "IBM Plex Sans", sans-serif;
              width: 1024px;
              margin-left: auto;
              margin-right: auto;
          }
          
          .translation{
            font-size: 1.5em;
            text-align: left;
            direction: ltr;
          }

          .arabic {
              font-family: "Traditional Arabic";
              font-size: 2.5em;
              text-align: right;
              direction: rtl;
          }
          
          .reference {
              color: brown
          }
        </style>
      </head>
      <body>
        <h1>Hisn al-Muslim</h1>
        <ol class="dua start"/>
        <ol>
          <xsl:for-each select="hisnulmuslim/group">
            <li>
              <h2>
                <xsl:value-of select="title"/>
              </h2>
              <ol class="dua">
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