/*
Template Name: Skote - Admin & Dashboard Template
Author: Themesbrand
Website: https://themesbrand.com/
Contact: themesbrand@gmail.com
File: gmaps init Js File
*/

var map;
$(document).ready(function(){
  // Markers
  map = new GMaps({
    div: '#gmaps-markers',
    lat: -6.213831,
    lng: 106.973908
  });
  map.addMarker({
    lat: -6.213831,
    lng: 106.973908,
    title: 'PT. FIMA',
    details: {
      author: 'Suwandi'
    },
    click: function(e){
      if(console.log)
        console.log(e);
      alert('You clicked in this marker');
    }
  });
});