<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="utf-8" indent="yes" />
  <xsl:template match="/">
    <html lang="en">

    <head>
      <!-- <meta charset="utf-8"> -->
      <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
      <title>Ḥiṣn al-Muslim</title>
      <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.1/css/bulma.min.css"/> -->
      <style>
      .container {
        width: 960px;
        margin-left: auto;
        margin-right: auto;
      }

      * {
        font-family: Roboto, sans-serif;
      }

      .book-title, .book-subtitle {
        text-align: center;
      }

      body {
        counter-reset: groupCounter eachDua;
      }

      .arabic {
        direction: rtl;
        text-align: right;
        font-family: "Arabic Typesetting", "Scheherazade", "Amiri", serif;
        font-size: 3em;
      }

      .translation {
        padding-top: 2em;
        padding-bottom: 2em;
      }

      .reference {
        color: blue;
      }
      </style>
    </head>
    <div class="container">
      <h1 class="book-title title is-1">
      Ḥiṣn al-Muslim
    </h1>
      <h2 class="book-subtitle subtitle is-2">
      Invocations from the Qurʾān and Sunnah
    </h2>
    </div>
    <div class="container">
      <xsl:for-each select="hisnulmuslim/group">
        <section class="section">
          <h2 class="dua-group subtitle is-2">
              <xsl:value-of select="@id"/><xsl:text> </xsl:text><xsl:value-of select="title"/>
          </h2>
          <xsl:for-each select="dua">
          <div class="box">
            <h3 class="dua subtitle is-3 has-text-primary">Dua <xsl:value-of select="@id" /></h3>
            <div class="arabic">
              <xsl:value-of select="arabic" />
            </div>
            <div class="translation">
              <xsl:value-of select="translation" />
            </div>
            <div class="reference">
              <xsl:value-of select="reference" />
            </div>
            <hr></hr>
          </div>
        </xsl:for-each>
        </section>
      </xsl:for-each>
    </div>

    </html>
  </xsl:template>
</xsl:stylesheet>