$(function () {
  function buildHTML(message) {
    var html = `<div class="comments-block" data-comment-id="${message}">
    <div class="one-block">
       ${message.name}
    </div>
        <div class="item-comment">
           ${message.message}
        </div>
    </div >
    </div >
      `
    return html;
  }
  $('#new_message').on('submit', function (e) {
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
      .done(function (data) {
        var html = buildHTML(data);
        $('.comments-block').append(html);
        $('#new_message')[0].reset();
        $('input').prop('disabled', false);
      })
  });
});
