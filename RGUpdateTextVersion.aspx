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
<%= content.@MainStoryBodyText %> <%= content.@MainStoryLinkCTA %>

<%= content.@MainStoryLinkURL %>

Tool News

<%= content.@ToolNewsStory1Headline %>
<%= content.@ToolNewsStory1TextText %> <%= content.@ToolNewsStory1CTA %>

<%= content.@ToolNewsStory1URL %>

<%= content.@ToolNewsStory2Headline %>
<%= content.@ToolNewsStory2TextText %> <%= content.@ToolNewsStory2CTA %>

<%= content.@ToolNewsStory2URL %>

<%= content.@ToolNewsStory3Headline %>
<%= content.@ToolNewsStory3TextText %> <%= content.@ToolNewsStory3CTA %>

<%= content.@ToolNewsStory3URL %>

Events

<%= content.@EventsHeadline %>
<%= content.@EventsTextText %> <%= content.@EventsCTA %>

<%= content.@EventsURL %>

Free Stuff

<%= content.@FreeStuffStory1Headline %>
<%= content.@FreeStuffStory1Subtitle %>
<%= content.@FreeStuffStory1TextText %> <%= content.@FreeStuffStory1CTA %>

<%= content.@FreeStuffStory1URL %>

<%= content.@FreeStuffStory2Headline %>
<%= content.@FreeStuffStory2Subtitle %>
<%= content.@FreeStuffStory2TextText %> <%= content.@FreeStuffStory2CTA %>

<%= content.@FreeStuffStory2URL %>

<%= defer("@include view='RedGateFooterWithCopyright'") %>