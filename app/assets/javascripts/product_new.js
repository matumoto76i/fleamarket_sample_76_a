$(document).on('turbolinks:load', ()=>{

  $(function(){
    const buildFileField = (index)=> {
      const html = `<div class="image-area" data-index="${index}">
                      <label class="img-file" for="product_images_attributes_${index}_image">
                        <div class="input-area">
                          <img class="image-icon" src="/assets/icon/icon_camera-24c5a3dec3f777b383180b053077a49d0416a4137a1c541d7dd3f5ce93194dee.png">
                          <input class="image-file" type="file"
                          name="product[images_attributes][${index}][image]"
                          id="product_images_attributes_${index}_image">
                          </div>
                          <span class="js-remove">削除</span>
                      </label>
                    </div>`;
      return html;
    }


    // let file_field = document.querySelector('input[type=file]');

    let fileIndex = [1,2,3,4,5,6,7,8,9,10];

    lastIndex = $('.image-area:last').data('index');
    fileIndex.splice(0, lastIndex);
    $('.hidden-destroy').hide();

    $('#image-box').on('change', '.image-file', function(e){
      $('#image-box').append(buildFileField(fileIndex[0]));
      fileIndex.shift();

      fileIndex.push(fileIndex[fileIndex.length - 1] + 1)
    });

    $('#image-box').on('click', '.js-remove', function(){
      $(this).parent().remove();
      if ($('.js-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));
    });

    $('#image-box').on('click', '.js-remove', function(){
      const targetIndex = $(this).parent().data('index')
      const hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`);
      if (hiddenCheck) hiddenCheck.prop('checked', true);
    });

  });
});
