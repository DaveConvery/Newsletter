<%

var defer = function(blockText) {

  // We must hide the jsp escape sequences from this round of
  // JSP processing, there will be another round subsequently
  //
  return '<' + '%' + blockText + '%' + '>';
};

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>The Red Gate Update</title>
  <style type="text/css">
    /* Client-specific Styles */
    /* Prevent Webkit and Windows Mobile platforms from changing default font sizes, while not breaking desktop design. */
    .ExternalClass {width:100%;} /* Force Hotmail to display emails at full width */
    .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height: 100%;} /* Force Hotmail to display normal line spacing.  More on that: http://www.emailonacid.com/forum/viewthread/43/ */
    #backgroundTable {margin:0; padding:0; width:100% !important; line-height: 100%; background-color: ##DFDFDF; !important;}
    /* End reset */
    /* Some sensible defaults for images
    1. "-ms-interpolation-mode: bicubic" works to help ie properly resize images in IE. (if you are resizing them using the width and height attributes)
    2. "border:none" removes border when linking images.
    3. Updated the common Gmail/Hotmail image display fix: Gmail and Hotmail unwantedly adds in an extra space below images when using non IE browsers. You may not always want all of your images to be block elements. Apply the "image_fix" class to any image you need to fix.

    Bring inline: Yes.
    */
    img {outline:none; text-decoration:none; -ms-interpolation-mode: bicubic;}
    a img {border:none;}
    .image_fix {display:block;}

    /** Yahoo paragraph fix: removes the proper spacing or the paragraph (p) tag. To correct we set the top/bottom margin to 1em in the head of the document. Simple fix with little effect on other styling. NOTE: It is also common to use two breaks instead of the paragraph tag but I think this way is cleaner and more semantic. NOTE: This example recommends 1em. More info on setting web defaults: http://www.w3.org/TR/CSS21/sample.html or http://meiert.com/en/blog/20070922/user-agent-style-sheets/

    Bring inline: Yes.
    **/
    p {margin: 1em 0;}

    /** Hotmail header color reset: Hotmail replaces your header color styles with a green color on H2, H3, H4, H5, and H6 tags. In this example, the color is reset to black for a non-linked header, blue for a linked header, red for an active header (limited support), and purple for a visited header (limited support).  Replace with your choice of color. The !important is really what is overriding Hotmail's styling. Hotmail also sets the H1 and H2 tags to the same size.

    Bring inline: Yes.
    **/
    h1, h2, h3, h4, h5, h6 {color: black !important;}

    h1 a, h2 a, h3 a, h4 a, h5 a, h6 a {color: blue !important;}

    h1 a:active, h2 a:active,  h3 a:active, h4 a:active, h5 a:active, h6 a:active {
      color: red !important; /* Preferably not the same color as the normal header link color.  There is limited support for psuedo classes in email clients, this was added just for good measure. */
     }

    h1 a:visited, h2 a:visited,  h3 a:visited, h4 a:visited, h5 a:visited, h6 a:visited {
      color: purple !important; /* Preferably not the same color as the normal header link color. There is limited support for psuedo classes in email clients, this was added just for good measure. */
    }

    /** Outlook 07, 10 Padding issue: These "newer" versions of Outlook add some padding around table cells potentially throwing off your perfectly pixeled table.  The issue can cause added space and also throw off borders completely.  Use this fix in your header or inline to safely fix your table woes.

    More info: http://www.ianhoar.com/2008/04/29/outlook-2007-borders-and-1px-padding-on-table-cells/
    http://www.campaignmonitor.com/blog/post/3392/1px-borders-padding-on-table-cells-in-outlook-07/

    H/T @edmelly

    Bring inline: No.
    **/
    table td {border-collapse: collapse;}

    /** Remove spacing around Outlook 07, 10 tables

    More info : http://www.campaignmonitor.com/blog/post/3694/removing-spacing-from-around-tables-in-outlook-2007-and-2010/

    Bring inline: Yes
    **/
    table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; }

    /* Styling your links has become much simpler with the new Yahoo.  In fact, it falls in line with the main credo of styling in email, bring your styles inline.  Your link colors will be uniform across clients when brought inline.

    Bring inline: Yes. */
    a {color: #56A753; text-decoration:none;}

    /* Or to go the gold star route...
    a:link { color: orange; }
    a:visited { color: blue; }
    a:hover { color: green; }
    */

    /***************************************************
    ****************************************************
    MOBILE TARGETING

    Use @media queries with care.  You should not bring these styles inline -- so it's recommended to apply them AFTER you bring the other stlying inline.

    Note: test carefully with Yahoo.
    Note 2: Don't bring anything below this line inline.
    ****************************************************
    ***************************************************/

    /* NOTE: To properly use @media queries and play nice with yahoo mail, use attribute selectors in place of class, id declarations.
    table[class=classname]
    Read more: http://www.campaignmonitor.com/blog/post/3457/media-query-issues-in-yahoo-mail-mobile-email/
    */
    @media only screen and (max-device-width: 480px) {

      /* A nice and clean way to target phone numbers you want clickable and avoid a mobile phone from linking other numbers that look like, but are not phone numbers.  Use these two blocks of code to "unstyle" any numbers that may be linked.  The second block gives you a class to apply with a span tag to the numbers you would like linked and styled.

      Inspired by Campaign Monitor's article on using phone numbers in email: http://www.campaignmonitor.com/blog/post/3571/using-phone-numbers-in-html-email/.

      Step 1 (Step 2: line 224)
      */
      a[href^="tel"], a[href^="sms"] {
            text-decoration: none;
            color: black; /* or whatever your want */
            pointer-events: none;
            cursor: default;
          }

      .mobile_link a[href^="tel"], .mobile_link a[href^="sms"] {
            text-decoration: default;
            color: orange !important; /* or whatever your want */
            pointer-events: auto;
            cursor: default;
          }

    /* More Specific Targeting */

    @media only screen and (min-device-width: 768px) and (max-device-width: 1024px) {
      /* You guessed it, ipad (tablets, smaller screens, etc) */

      /* Step 1a: Repeating for the iPad */
      a[href^="tel"], a[href^="sms"] {
            text-decoration: none;
            color: #ffffff; /* or whatever your want */
            pointer-events: none;
            cursor: default;
          }

      .mobile_link a[href^="tel"], .mobile_link a[href^="sms"] {
            text-decoration: default;
            color: orange !important;
            pointer-events: auto;
            cursor: default;
          }
    }

    @media only screen and (-webkit-min-device-pixel-ratio: 2) {
      /* Put your iPhone 4g styles in here */
          }
    }
      
    }

    /* Following Android targeting from:
    http://developer.android.com/guide/webapps/targeting.html
    http://pugetworks.com/2011/04/css-media-queries-for-targeting-different-mobile-devices/  */
    @media only screen and (-webkit-device-pixel-ratio:.75){
      /* Put CSS for low density (ldpi) Android layouts in here */
    }
    @media only screen and (-webkit-device-pixel-ratio:1){
      /* Put CSS for medium density (mdpi) Android layouts in here */
    }
    @media only screen and (-webkit-device-pixel-ratio:1.5){
      /* Put CSS for high density (hdpi) Android layouts in here */
    }
    /* end Android targeting */
  </style>

  <!-- Targeting Windows Mobile -->
  <!--[if IEMobile 7]>
  <style type="text/css">

  </style>
  <![endif]-->

  <!-- ***********************************************
  ****************************************************
  END MOBILE TARGETING
  ****************************************************
  ************************************************ -->

  <!--[if gte mso 9]>
  <style>
    /* Target Outlook 2007 and 2010 */
  </style>
  <![endif]-->
<center>
  <!-- Wrapper Table -->
  <table width="100%" cellpadding="0" cellspacing="0" border="0" style="background-color:#DFE0E0; text-align:left;">
    <tbody>
      <tr>
        <td>
          <table width="600" style="border-collapse:collapse; background-color:#ffffff; width:600px;" cellpadding="0" cellspacing="0" border="0" align="center">
            <tr>
              <td width="300px" valign="top" style="padding-left:20px; padding-top:20px; padding-right: 10px; padding-bottom:10px; color:#6F6F6F; font-size: 8pt; font-family: Arial, 'Helvetica Neue', Sans Serif; border-collapse:collapse;">This is an email from Red Gate. To ensure you receive these emails, please add <a href="mailto:hellofrom@red-gate.com">hellofrom@red-gate.com</a> to your safe senders list.</td>
              <td width="300px" valign="top" align="right" style="padding-right:20px; padding-top:20px; padding-left: 10px; border-collapse:collapse; font-size: 8pt; color:#6F6F6F; font-family: Arial, 'Helvetica Neue', Sans Serif; padding-bottom: 10px;"><%= defer("@include view='RGUpdateV2MirrorPage'") %></td>
            </tr>
            <tr>
              <td width="300px" valign="top" style="padding-left:20px; padding-top:20px; padding-bottom:40px; color:#CC0000; font-weight:bold; font-size:14pt; font-family: Arial, 'Helvetica Neue', Sans Serif; border-collapse:collapse;">The Red Gate Update</td>
              <td width="300px" valign="top" align="right" style="padding-right:20px; padding-top:20px; border-collapse:collapse;"><a href="http://www.red-gate.com"><img src="http://assets.red-gate.com/external/red-gate-email/redgate-update/redgate_logo_top.png" alt="Red Gate" /></a></td>
            </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td>  
        <!-- First Content Table -->
        <table width="600px" align="center" style="border-collapse:collapse; background-color:#ffffff; text-align:left;" cellpadding="0" cellspacing="0" border="0">
          <tbody>
            <tr>
              <td width="380" style="padding-left:20px; padding-right: 10px; padding-bottom: 20px; border-collapse:collapse; width:380px"><a href="<%= content.@MainStoryLinkURL %>" style="text-decoration:none; Arial, 'Helvetica Neue', Sans Serif; color:#CC0000; font-weight:bold; font-size:20pt; line-height: 140%;"><span style="font-family: Arial, 'Helvetica Neue', Sans Serif; color:#CC0000; font-weight:bold; font-size:20pt; line-height: 140%; text-decoration:none"><%= content.@MainStoryHeadline %></span></a>
              <br />  
              <div style="color:#6F6F6F; font-family:Arial, Helvetica, sans-serif; font-size:12pt; line-height:130%;"><%= content.@MainStoryBody %></div>
              <br />
              <a href="<%= content.@MainStoryLinkURL %>" style="font-family:Arial, Helvetica, sans-serif; font-size:12pt; line-height:150%; font-weight:bold; text-decoration:none; color:#56A753"><%= content.@MainStoryLinkCTA %></a>
              </td>
              <td  align="right" width="220" valign="middle" style="padding-right:20px; border-collapse:collapse; width: 220px">
                <a href="<%= content.@MainStoryLinkURL %>"><img src="<%= content.@MainStoryImage %>" alt="<%= content.@MainStoryImageAlt %>" /></a>
              </td>
            </tr>
          </tbody>
        </table>
        <!-- End First Content table -->
        </td>
      </tr>
      <tr>
        <td>  
        <!-- Second Content Table -->
        <table width="600" style="border-collapse:collapse; background-color:#F3F3F3; width:600px" cellpadding="0" cellspacing="0" border="0" align="center">
          <tr>
            <td width="150" style="width:150px; border-collapse:collapse; padding-top:20px; padding-left:20px;"><div style="border-collapse:collapse; color:#9C9B9B; font-weight:bold; font-size:18pt; font-family:Arial, Helvetica, sans-serif;">Tool News</div></td>
            <td style="padding-top:20px; padding-right:20px; border-collapse:collapse;" align="right"><img src="http://assets.red-gate.com/external/red-gate-email/redgate-update/tool_placeholder.png" alt="Tool News" /></td>
          </tr>
          <tr>
            <td width="150" valign="middle" style="padding-left:20px; padding-top:20px; border-collapse:collapse; width:150px;"><a href="#"><img src="<%= content.@ToolNewsStory1Image %>" alt="<%= content.@ToolNewsStory1ImageAlt %>" /></a></td>
            <td valign="top" width="450" style="border-collapse:collapse; width:450px">
              <div style="padding-top: 20px; padding-right:20px;"><a style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt; text-decoration:none;" href="<%= content.@ToolNewsStory1URL %>"></a><span style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt; text-decoration:none;"><%= content.@ToolNewsStory1Headline %></span></div>
              <div class="text" style="padding-top: 10px; padding-right:20px; font-family:Arial, Helvetica, sans-serif; color:#6F6F6F; font-size:10pt;"><span class="text"><%= content.@ToolNewsStory1Text %></span></div>
              <div style="padding-top: 10px; padding-right:20px;"><a style="text-decoration:none; color:#56A753; font-family:Arial, Helvetica, sans-serif; font-size:10pt; font-weight:bold;" href="<%= content.@ToolNewsStory1URL %>"><span style="text-decoration:none; color:#56A753; font-family:Arial, Helvetica, sans-serif; font-size:10pt; font-weight:bold;"><%= content.@ToolNewsStory1CTA %></span></a></div>
            </td>
          </tr>
          <tr>
            <td width="150" valign="middle" style="padding-left:20px; padding-top:20px; border-collapse:collapse; width:150px;"><a href="#"><img src="<%= content.@ToolNewsStory2Image %>" alt="<%= content.@ToolNewsStory2ImageAlt %>" /></a></td>
            <td valign="top" width="450" style="border-collapse:collapse; width:450px">
              <div style="padding-top: 20px; padding-right:20px;"><a style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt; text-decoration:none;" href="<%= content.@ToolNewsStory2URL %>"></a><span style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt; text-decoration:none;"><%= content.@ToolNewsStory2Headline %></span></div>
              <div class="text" style="padding-top: 10px; padding-right:20px; font-family:Arial, Helvetica, sans-serif; color:#6F6F6F; font-size:10pt;"><span class="text"><%= content.@ToolNewsStory2Text %></span></div>
              <div style="padding-top: 10px; padding-right:20px;"><a style="text-decoration:none; color:#56A753; font-family:Arial, Helvetica, sans-serif; font-size:10pt; font-weight:bold;" href="<%= content.@ToolNewsStory2URL %>"><span style="text-decoration:none; color:#56A753; font-family:Arial, Helvetica, sans-serif; font-size:10pt; font-weight:bold;"><%= content.@ToolNewsStory2CTA %></span></a></div>
            </td>
          </tr>
          <tr>
            <td width="150" valign="middle" style="padding-left:20px; padding-top:20px; border-collapse:collapse; width:150px;"><a href="#"><img src="<%= content.@ToolNewsStory3Image %>" alt="<%= content.@ToolNewsStory3ImageAlt %>" /></a></td>
            <td valign="top" width="450" style="border-collapse:collapse; width:450px">
              <div style="padding-top: 20px; padding-right:20px;"><a style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt; text-decoration:none;" href="<%= content.@ToolNewsStory3URL %>"></a><span style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt; text-decoration:none;"><%= content.@ToolNewsStory3Headline %></span></div>
              <div class="text" style="padding-top: 10px; padding-right:20px; font-family:Arial, Helvetica, sans-serif; color:#6F6F6F; font-size:10pt;"><span class="text"><%= content.@ToolNewsStory3Text %></span></div>
              <div style="padding-top: 10px; padding-right:20px;"><a style="text-decoration:none; color:#56A753; font-family:Arial, Helvetica, sans-serif; font-size:10pt; font-weight:bold;" href="<%= content.@ToolNewsStory3URL %>"><span style="text-decoration:none; color:#56A753; font-family:Arial, Helvetica, sans-serif; font-size:10pt; font-weight:bold;"><%= content.@ToolNewsStory3CTA %></span></a></div>
            </td>
          </tr>
        </table>
        <!-- End Second Content table -->
        </td>
      </tr>
          <!-- Begin third content table -->
      <tr>
        <td>
          <table width="600" style="background-color:#ffffff; border-collapse:collapse; width:600px;" align="center" cellpadding="0" cellspacing="0" border="0">
            <tr>
              <td width="150" style="border-collapse: collapse; width:150px; padding-top:20px; padding-left:20px;"><div style="border-collapse:collapse; color:#9C9B9B; font-weight:bold; font-size:18pt; font-family:Arial, Helvetica, sans-serif;">Events</div></td>
              <td align="right" style="padding-right:20px; padding-top:20px;"><img src="http://assets.red-gate.com/external/red-gate-email/redgate-update/events_placeholder.png" alt="events" /></td>
            </tr>
            <tr>
              <td colspan="2" style="padding-left:20px; padding-right: 180px; border-collapse: collapse;">
                <div style="font-family: Arial, 'Helvetica Neue', Sans Serif; font-weight:bold; font-size:20pt; line-height: 140%;"><a style="text-decoration:none; color:#CC0000;" href="<%= content.@EventsURL %>"><span style="text-decoration:none; color:#CC0000;"><%= content.@EventsHeadline %></span></a></div>
                <div style="color:#6F6F6F; font-family:Arial, Helvetica, sans-serif; font-size:12pt; line-height:130%;"><%= content.@EventsText %></div>
                <div style="padding-top: 15px; padding-bottom: 15px"><a href="<%= content.@EventsURL %>" style="font-family:Arial, Helvetica, sans-serif; font-size:12pt; line-height:150%; font-weight:bold; text-decoration:none; color:#56A753"><%= content.@EventsCTA %></a></div>
              </td>
            </tr>
            <tr style="border:none;">
              <td style="padding-left: 20px; border:none; border-collapse: collapse;"><a href="<%= content.@EventsURL %>"><img style="border:none;" src="<%= content.@EventsSmallImageURL %>" alt="<%= content.@EventsSmallImageAlt %>" /></a></td>
              <td valign="baseline" align="right" style="border:none; border-collapse: collapse;"><a href="<%= content.@EventsURL %>"><img style="border:none;" src="<%= content.@EventsLargeImageURL %>" alt="<%= content.@EventsLargeImageURL %>" /></a></td>
            </tr>
          </table>
        </td>
      </tr>
          <!-- End of third content table -->
          
          <!-- Begin fourth content table -->
          
      <tr>
        <td>
                    <table width="600" style="border-collapse:collapse; background-color:#F3F3F3; width:600px;" cellpadding="0" cellspacing="0" border="0" align="center">
            <tr>
              <td width="20" style="width: 20px;">&nbsp;</td>
              <td width="270" style="border-collapse: collapse; width:270px; padding-top:20px;"><div style="border-collapse:collapse; color:#9C9B9B; font-weight:bold; font-size:18pt; font-family:Arial, Helvetica, sans-serif;">Free Stuff</div></td>
              <td width="20" style="width: 20px">&nbsp;</td>
              <td width="270" style="padding-top:20px; border-collapse:collapse; width: 270px;" align="right"><img src="http://assets.red-gate.com/external/red-gate-email/redgate-update/freestuff_placeholder.png" alt="Free Stuff" /></td>
              <td width="20" style="width: 20px">&nbsp;</td>
            </tr>
            <tr valign="bottom">
              <td width="20" style="width: 20px;">&nbsp;</td>
              <td width="270" style=" padding-top:20px; border-collapse: collapse; width:270px;"><a href="<%= content.@FreeStuffStory1URL %>">
                <img src="<%= content.@FreeStuffStory1Image %>" alt="<%= content.@FreeStuffStory1Alt %>" /></a>
              </td>
              <td width="20" style="width: 20px;">&nbsp;</td>
              <td width="270" style=" padding-top:20px; border-collapse: collapse; width:270px;"><a href="<%= content.@FreeStuffStory2URL %>">
                <img src="<%= content.@FreeStuffStory2Image %>" alt="<%= content.@FreeStuffStory2Alt %>" /></a>
              </td>
              <td width="20" style="width: 20px;">&nbsp;</td>
            </tr>
            <tr>
              <td width="20" style="width: 20px;">&nbsp;</td>
              <td width="270" style=" border-collapse: collapse; width:270px;">
                <div style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt;"><a style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt; text-decoration:none;" href="<%= content.@FreeStuffStory1URL %>"><span style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt; text-decoration:none;"><%= content.@FreeStuffStory1Headline %></span></a></div>
                <div style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#6F6F6F; font-size:14pt;"><%= content.@FreeStuffStory1Subtitle %></div>
                <div style="padding-top: 10px; font-family:Arial, Helvetica, sans-serif; color:#6F6F6F; font-size:10pt;"><%= content.@FreeStuffStory1Text %></div>
                <div style="padding-top: 10px; font-family:Arial, Helvetica, sans-serif; font-size:10pt; font-weight:bold;"><a style="text-decoration:none; color:#56A753" href="<%= content.@FreeStuffStory1URL %>"><span style="text-decoration:none; color:#56A753"><%= content.@FreeStuffStory1CTA %></span></a></div>
              </td>
              <td width="20" style="width: 20px;">&nbsp;</td>  
              <td width="270" style=" border-collapse: collapse; width:270px;">
                <div style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt;"><a style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt; text-decoration:none;" href="<%= content.@FreeStuffStory2URL %>"><span style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt; text-decoration:none;"><%= content.@FreeStuffStory2Headline %></span></a></div>
                <div style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#6F6F6F; font-size:14pt;"><%= content.@FreeStuffStory2Subtitle %></div>
                <div style="padding-top: 10px; font-family:Arial, Helvetica, sans-serif; color:#6F6F6F; font-size:10pt;"><%= content.@FreeStuffStory2Text %></div>
                <div style="padding-top: 10px; font-family:Arial, Helvetica, sans-serif; font-size:10pt; font-weight:bold;"><a style="text-decoration:none; color:#56A753" href="<%= content.@FreeStuffStory2URL %>"><span style="text-decoration:none; color:#56A753"><%= content.@FreeStuffStory2CTA %></span></a></div>
              </td>
              <td width="20" style="width: 20px;">&nbsp;</td>
            </tr>
            <tr valign="bottom">
              <td width="20" style="width: 20px;">&nbsp;</td>
              <td width="270" style=" padding-top:20px; border-collapse: collapse; width:270px;"><a href="<%= content.@FreeStuffStory3URL %>">
                <img src="<%= content.@FreeStuffStory3Image %>" alt="<%= content.@FreeStuffStory3Alt %>" /></a>
              </td>
              <td width="20" style="width: 20px;">&nbsp;</td>
              <td width="270" style=" padding-top:20px; border-collapse: collapse; width:270px;"><a href="<%= content.@FreeStuffStory4URL %>">
                <img src="<%= content.@FreeStuffStory4Image %>" alt="<%= content.@FreeStuffStory4Alt %>" /></a>
              </td>
              <td width="20" style="width: 20px;">&nbsp;</td>
            </tr>
            <tr style="padding-bottom: 20px; border-collapse: collapse;">
              <td width="20" style="width: 20px;">&nbsp;</td>
              <td width="270" style=" border-collapse: collapse; width:270px;">
                <div style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt;"><a style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt; text-decoration:none;" href="<%= content.@FreeStuffStory3URL %>"><span style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt; text-decoration:none;"><%= content.@FreeStuffStory3Headline %></span></a></div>
                <div style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#6F6F6F; font-size:14pt;"><%= content.@FreeStuffStory3Subtitle %></div>
                <div style="padding-top: 10px; font-family:Arial, Helvetica, sans-serif; color:#6F6F6F; font-size:10pt;"><%= content.@FreeStuffStory3Text %></div>
                <div style="padding-top: 10px; font-family:Arial, Helvetica, sans-serif; font-size:10pt; font-weight:bold;"><a style="text-decoration:none; color:#56A753" href="<%= content.@FreeStuffStory3URL %>"><span style="text-decoration:none; color:#56A753"><%= content.@FreeStuffStory3CTA %></span></a></div>
              </td>
              <td width="20" style="width: 20px;">&nbsp;</td>  
              <td width="270" style=" border-collapse: collapse; width:270px;">
                <div style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt;"><a style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt; text-decoration:none;" href="<%= content.@FreeStuffStory4URL %>"><span style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#CC0000; font-size:18pt; text-decoration:none;"><%= content.@FreeStuffStory4Headline %></span></a></div>
                <div style="font-family:Arial, Helvetica, sans-serif; font-weight:bold; color:#6F6F6F; font-size:14pt;"><%= content.@FreeStuffStory4Subtitle %></div>
                <div style="padding-top: 10px; font-family:Arial, Helvetica, sans-serif; color:#6F6F6F; font-size:10pt;"><%= content.@FreeStuffStory4Text %></div>
                <div style="padding-top: 10px; font-family:Arial, Helvetica, sans-serif; font-size:10pt; font-weight:bold;"><a style="text-decoration:none; color:#56A753" href="<%= content.@FreeStuffStory4URL %>"><span style="text-decoration:none; color:#56A753"><%= content.@FreeStuffStory4CTA %></span></a></div>
              </td>
              <td width="20" style="width: 20px;">&nbsp;</td>
            </tr>
          </table>
        </td>
      </tr>    
      <tr>
        <td>  
        <!-- Begin footer -->
        <table class="footer" width="600" style="background-color:#CC0000; border-collapse:collapse" cellpadding="0" cellspacing="0" border="0" align="center">
          <tr>
            <td width="20" style="border-collapse:collapse; padding-left:20px; padding-top:20px; padding-right:20px; width: 20px;" >
              <a href="https://twitter.com/redgate"><img src="http://assets.red-gate.com/external/red-gate-email/redgate-update/twitter_placeholder.png" alt="Twitter" /></a>
            </td>
            <td width="20" style="border-collapse:collapse; padding-right:20px; padding-top:20px; width: 20px;" >
              <a href="http://www.facebook.com/RedGateSoftwareTools"><img src="http://assets.red-gate.com/external/red-gate-email/redgate-update/facebook_placeholder.png" alt="Facebook" /></a>
            </td>
            <td width="20" style="border-collapse:collapse; padding-right:20px; padding-top:20px; width: 20px" >  
              <a href="https://plus.google.com/+redgate/posts"><img src="http://assets.red-gate.com/external/red-gate-email/redgate-update/googleplus_placeholder.png" alt="Google+" /></a>
            </td>
            <td style="border-collapse:collapse; padding-right:20px; padding-top:20px;" >  
              <a href="http://www.linkedin.com/company/red-gate-software"><img src="http://assets.red-gate.com/external/red-gate-email/redgate-update/linkedin_placeholder.png" alt="LinkedIn" /></a>
            </td>
            <td align="right" style="padding-right: 20px; padding-top:20px; border-collapse:collapse">
              <a href="http://red-gate.com"><img src="http://assets.red-gate.com/external/red-gate-email/redgate-update/rglogofooter_placeholder.png" alt="Red Gate" /></a>
            </td>
          </tr>
        </table>
        <table class="footer" width="600" style="background-color:#CC0000; border-collapse:collapse" cellpadding="0" cellspacing="0" border="0" align="center">
          <tr>
            <td style="border-collapse: collapse;">&nbsp;</td>
            <td style="border-collapse: collapse;">&nbsp;</td>
          </tr>
          <tr>
            <td width="200" style="padding-left:20px; padding-bottom:20px; border-collapse: collapse; width: 200px"><a style="color:#ffffff; text-decoration:none; font-family: Arial, 'Helvetica Neue', Sans Serif;" href="http://www.red-gate.com">www.red-gate.com</a></td>
            <td style="padding-bottom:20px; padding-left:10px; border-collapse: collapse;"><a style="color:#ffffff; text-decoration:none; font-family: Arial, 'Helvetica Neue', Sans Serif;" href="mailto:info@red-gate.com">info@red-gate.com</a></td>
          </tr>
        </table>
        <table class="LegalText" align="center" width="600" style="width::600px; background-color:#F3F3F3; border-collapse:collapse" cellpadding="0" cellspacing="0" border="0">
          <tbody>
            <tr>
              <td style="padding-left: 20px; padding-right: 20px; color:#6F6F6F;">
                <%= defer("@include view='RedGateFooterWithCopyright'") %>
              </td>
            </tr>
          </tbody>
        </table>
        <!-- End footer -->
        </td>
      </tr>
    </tbody>  
  </table>
</center>  
  <!-- End of wrapper table -->
</body>
</html>