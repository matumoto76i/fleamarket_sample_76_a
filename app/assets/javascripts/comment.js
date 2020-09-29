$(function(){
  function buildHTML(comment){
    var html = `<div class="comment__index__list">
                  <p>
                    <a href=/users/${comment.user_id}>${comment.user_name}</a>
                    :
                    ${comment.text}
                  </p>
                  <div class="comment__index__list__date">
                    ${comment.created_at}
                  </div>
                </div>`
    return html;
  }
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.comment__index').append(html);
      $('.comment__box__contents__form').val('');
      $('.comment__box__contents__btn').prop('disabled', false);
      $('.comment__index').animate({ scrollTop: $('.comment__index')[0].scrollHeight});
    })
    .fail(function(){
      alert('通信に失敗しました');
    })
  })
})