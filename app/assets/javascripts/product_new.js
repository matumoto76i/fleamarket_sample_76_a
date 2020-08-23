$(document).on('turbolinks:load', ()=>{
  const buildFileField = (index)=> {
    const html = `<div class="file-group" data-index="${index}">
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

  const buildImg = (index, url)=> {
    const html = `<img  src="${url}" width="100px" height="100px">`;
    return html;
  }

  let fileIndex = [1,2,3,4,5,6,7,8,9,10];
  
  lastIndex = $('.file_group:last').data('index');
  fileIndex.splice(0, lastIndex);
  $('.hidden-destroy').hide();

  
  $('#image-box').on('change', '.image-file', function(e){
    const targetIndex = $(this).parent().data('index');
    
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);

    if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
      img.setAttribute('image', blobUrl);
    } else {
      $('#previews').append(buildImg(targetIndex, blobUrl));
      $('#image-box').append(buildFileField(fileIndex[0]));
      fileIndex.shift();

      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
    }

  });

  $('#image-box').on('click', '.js-remove', function() {
    const targetIndex = $(this).parent().data('index');
    
    const hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`);
    if (hiddenCheck) hiddenCheck.prop('checked', true);

    $(this).parent().remove();
    $(`img[data-index="${targetIndex}"]`).remoce();
    
    if ($('.image-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));
  });
});
