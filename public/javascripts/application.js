// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function(){
  
  $('.refresh-company').click(function(){
    c_id = $(this).attr('rel');
    $.post('refresh_company/'+c_id, {}, function(){
      $("#sentiment_"+c_id).load('companies/ #sentiment_'+c_id+'> *');
    });
  })
  
});