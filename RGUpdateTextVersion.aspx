<%

var defer = function(blockText) {

  // We must hide the jsp escape sequences from this round of
  // JSP processing, there will be another round subsequently
  //
  return '<' + '%' + blockText + '%' + '>';
};

%>
<%= defer("@include view='MirrorPage'") %>
The Red Gate Update

<%= content.@MainStoryHeadline %>
<%= content.@MainStoryBody %> <%= content.@MainStoryLinkCTA %>

<%= content.@MainStoryLinkURL %>

Tool News

<%= content.@ToolNewsStory1Headline %>
<%= content.@ToolNewsStory1Text %> <%= content.@ToolNewsStory1CTA %>

<%= content.@ToolNewsStory1URL %>

<%= content.@ToolNewsStory2Headline %>
<%= content.@ToolNewsStory2Text %> <%= content.@ToolNewsStory2CTA %>

<%= content.@ToolNewsStory2URL %>

<%= content.@ToolNewsStory3Headline %>
<%= content.@ToolNewsStory3Text %> <%= content.@ToolNewsStory3CTA %>

<%= content.@ToolNewsStory3URL %>

Events

<%= content.@EventsHeadline %>
<%= content.@EventsText %> <%= content.@EventsCTA %>

<%= content.@EventsURL %>

Free Stuff

<%= content.@FreeStuffStory1Headline %>
<%= content.@FreeStuffStory1Subtitle %>
<%= content.@FreeStuffStory1Text %> <%= content.@FreeStuffStory1CTA %>

<%= content.@FreeStuffStory1URL %>

<%= content.@FreeStuffStory2Headline %>
<%= content.@FreeStuffStory2Subtitle %>
<%= content.@FreeStuffStory2Text %> <%= content.@FreeStuffStory2CTA %>

<%= content.@FreeStuffStory2URL %>

<%= content.@FreeStuffStory3Headline %>
<%= content.@FreeStuffStory3Subtitle %>
<%= content.@FreeStuffStory3Text %> <%= content.@FreeStuffStory3CTA %>

<%= content.@FreeStuffStory3URL %>

<%= content.@FreeStuffStory4Headline %>
<%= content.@FreeStuffStory4Subtitle %>
<%= content.@FreeStuffStory4Text %> <%= content.@FreeStuffStory4CTA %>

<%= content.@FreeStuffStory4URL %>

<%= defer("@include view='RedGateFooterWithCopyright'") %>