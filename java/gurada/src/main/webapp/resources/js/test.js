/*Array.prototype.get = function(index){
                return this[index];
            }
            Array.prototype.set = function(object){
                this[this.length] = object;
            }

            Coditech = new Object();
            Coditech.Version="1.0.0.0";
            Coditech.Framework = new Object();

            Coditech.Framework.Category = function(name,value){
                var _name = name;
                var _value = value;
                var _subcategory = new Array();

                this.getName = function(){return _name;}
                this.getValue = function(){ return _value;}
                this.add = function(name,value){   
                _subcategory.set(new Coditech.Framework.Category(name,value));
                }

                this.get = function(index){
                    return _subcategory.get(index);
                }
                this.length = function(){ return _subcategory.length;}
                }

            function addCategory(category,name,value){
                    category.add(name,value);
            }

            ROOT_CATEGORY_NODE = new Coditech.Framework.Category("ROOT","");
            addCategory(ROOT_CATEGORY_NODE,"CATE_0","-대분류-");
            addCategory(ROOT_CATEGORY_NODE,"CATE_1","남성");
            addCategory(ROOT_CATEGORY_NODE,"CATE_2","여성");
            addCategory(ROOT_CATEGORY_NODE,"CATE_3","카키");
            addCategory(ROOT_CATEGORY_NODE,"CATE_4","보라");

            addCategory(ROOT_CATEGORY_NODE.get(0),"CATE_0_0","-소분류-");
            
            addCategory(ROOT_CATEGORY_NODE.get(1),"CATE_0_1","-소분류-");
            addCategory(ROOT_CATEGORY_NODE.get(1),"CATE_0_1","수트");
            addCategory(ROOT_CATEGORY_NODE.get(1),"CATE_0_2","아우터");
            addCategory(ROOT_CATEGORY_NODE.get(1),"CATE_0_3","가방");
            addCategory(ROOT_CATEGORY_NODE.get(1),"CATE_0_4","상의");
            addCategory(ROOT_CATEGORY_NODE.get(1),"CATE_0_5","하의");

            addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_1_0","-소분류-");
            addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_1_1","수트");
            addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_1_2","아우터");
            addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_1_3","가방");
            addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_1_4","상의");
            addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_1_4","하의");
            
            addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_2_0","-사이즈 선택-");
            addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_2_2","55");
            addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_2_3","66");

            addCategory(ROOT_CATEGORY_NODE.get(3),"CATE_3_0","-사이즈 선택-");
            addCategory(ROOT_CATEGORY_NODE.get(3),"CATE_3_1","44");


            addCategory(ROOT_CATEGORY_NODE.get(4),"CATE_4_0","-사이즈 선택-");
            addCategory(ROOT_CATEGORY_NODE.get(4),"CATE_4_3","66");

 

            function initialize(){
                var defaultForm = document.getElementById("defaultForm");
                if (null != defaultForm){
                    createOption(defaultForm.color, ROOT_CATEGORY_NODE);
                    createOption(defaultForm.size, ROOT_CATEGORY_NODE.get(0));
                    createOption(defaultForm.test, ROOT_CATEGORY_NODE.get(0).get(0));
                }
            }

 

            function clearSelectBox(selectBox){
                if (null == selectBox || null == selectBox.options){
                    return;
            }
            var length = selectBox.options.length;
            
            for (var index=0;index<length ;index++){ selectBox.options.remove(0); }
            }

 
            function createOption(selectBox,category){
                if (null == category) return;

            clearSelectBox(selectBox);

                for (var index=0;index<category.length(); index++){
                    var c = category.get(index);
                    var option = new Option();

                    option.value = c.getName();
                    option.text = c.getValue();

                    selectBox.options.add(option);
                }
            }

            function changeSubject(form){
                var category = ROOT_CATEGORY_NODE.get(form.color.selectedIndex);
                if (null != category){
                    createOption(form.size,category);
                    createOption(form.test,category.get(0));
                }
            }

 

            function changeContents(form){
                var category = null;
                    category =ROOT_CATEGORY_NODE.get(form.color.selectedIndex);
                    category = category.get(form.size.selectedIndex);

                if (null != category){
                    createOption(form.test,category);
                }
            }

            window.onload = initialize;*/

 function previewImage(targetObj, View_area) {
               var preview = document.getElementById(View_area); //div id
               var ua = window.navigator.userAgent;

              //ie일때(IE8 이하에서만 작동)
               if (ua.indexOf("MSIE") > -1) {
                  targetObj.select();
                  try {
                     var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)
                     var ie_preview_error = document.getElementById("ie_preview_error_" + View_area);


                     if (ie_preview_error) {
                        preview.removeChild(ie_preview_error); //error가 있으면 delete
                     }

                     var img = document.getElementById(View_area); //이미지가 뿌려질 곳

                     //이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
                     img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+src+"', sizingMethod='scale')";
                  } catch (e) {
                     if (!document.getElementById("ie_preview_error_" + View_area)) {
                        var info = document.createElement("<p>");
                        info.id = "ie_preview_error_" + View_area;
                        info.innerHTML = e.name;
                        preview.insertBefore(info, null);
                     }
                  }
              //ie가 아닐때(크롬, 사파리, FF)
               } else {
                  var files = targetObj.files;
                  for ( var i = 0; i < files.length; i++) {
                     var file = files[i];
                     var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
                     if (!file.type.match(imageType))
                        continue;
                     var prevImg = document.getElementById("prev_" + View_area); //이전에 미리보기가 있다면 삭제
                     if (prevImg) {
                        preview.removeChild(prevImg);
                     }
                     var img = document.createElement("img"); 
                     img.id = "prev_" + View_area;
                     img.classList.add("obj");
                     img.file = file;
                     img.style.width = '400px'; 
                     img.style.height = '400px';
                     preview.appendChild(img);
                     if (window.FileReader) { // FireFox, Chrome, Opera 확인.
                        var reader = new FileReader();
                        reader.onloadend = (function(aImg) {
                           return function(e) {
                              aImg.src = e.target.result;
                           };
                        })(img);
                        reader.readAsDataURL(file);
                     } else { // safari is not supported FileReader
                        //alert('not supported FileReader');
                        if (!document.getElementById("sfr_preview_error_"
                              + View_area)) {
                           var info = document.createElement("p");
                           info.id = "sfr_preview_error_" + View_area;
                           info.innerHTML = "not supported FileReader";
                           preview.insertBefore(info, null);
                        }
                     }
                  }
               }
            } 
            