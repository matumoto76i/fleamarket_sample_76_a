$(document).on('turbolinks:load', function(){
  
  function build_Option(category){
    let html = `<option value="${category.id}">${category.name}</option>`;
    return html;
  }

  function ChildrenBox(insertHTML){
    let childHtml = "";
    childHtml = `<div class="category-form" id="category_content">
                        <select id="child_category_form" class="form-text" name="product[category_id]" >
                          <option value>選択してください</option>
                          ${insertHTML}
                        </select>
                      </div>`;
    $('.category').append(childHtml);
  }
  function GrandchildrenBox(insertHTML){
    let childHtml = "";
    childHtml = `<div class="category-form" id="category_content">
                        <select id="grand_category_form" class="form-text" name="product[category_id]" >
                          <option value>選択してください</option>
                          ${insertHTML}
                        </select>
                      </div>`;
    $('.category').append(childHtml);
  }

  // 親カテゴリーの選択イベント
  $("#category_form").on('change', function () {
    let parentValue = document.getElementById('category_form').value;

    if (parentValue != ""){
      $.ajax({
        url: '/products/get_category_children',
        type: 'GET',
        data: { parent_id: parentValue },
        dataType: 'json'
      })
      
      .done(function(data){
        let insertHTML = '';
        data.forEach(function(child){
          insertHTML += build_Option(child);
        });
        ChildrenBox(insertHTML);
      })
      .fail(function(){
        alert("通信エラー");
      });
    }
  });

  // 子供カテゴリー選択イベント
  $('#category').on('change', '#child_category_form', function () {
    let childValue = document.getElementById('child_category_form').value;
    if (childValue != ""){
      $.ajax({
        url: '/products/get_category_grandchildren',
        type: 'GET',
        data: { child_id: childValue },
        dataType: 'json'
      })
      
      .done(function(grandchildren){
        console.log("test");
        if (grandchildren.length !=0){
          let insertHTML = '';
          grandchildren.forEach(function(grandchild){
            insertHTML += build_Option(grandchild);
          });
          GrandchildrenBox(insertHTML);
        }
      })
      .fail(function(){
        alert("通信エラー");
      });
    }
  });

});
