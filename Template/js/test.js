Array.prototype.get = function(index){
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
            /*addCategory(ROOT_CATEGORY_NODE,"CATE_3","카키");
            addCategory(ROOT_CATEGORY_NODE,"CATE_4","보라");*/

            addCategory(ROOT_CATEGORY_NODE.get(0),"CATE_0_0","-소분류-");
            
            addCategory(ROOT_CATEGORY_NODE.get(1),"CATE_0_1","-소분류-");
            addCategory(ROOT_CATEGORY_NODE.get(1),"CATE_0_1","상의");
            addCategory(ROOT_CATEGORY_NODE.get(1),"CATE_0_2","하의");
            addCategory(ROOT_CATEGORY_NODE.get(1),"CATE_0_3","악세서리");

            addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_1_0","-소분류-");
            addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_1_1","상의");
            addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_1_2","하의");
            addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_1_3","원피스");
            addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_1_4","악세서리");

            /*addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_2_0","-사이즈 선택-");
            addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_2_2","55");
            addCategory(ROOT_CATEGORY_NODE.get(2),"CATE_2_3","66");

            addCategory(ROOT_CATEGORY_NODE.get(3),"CATE_3_0","-사이즈 선택-");
            addCategory(ROOT_CATEGORY_NODE.get(3),"CATE_3_1","44");


            addCategory(ROOT_CATEGORY_NODE.get(4),"CATE_4_0","-사이즈 선택-");
            addCategory(ROOT_CATEGORY_NODE.get(4),"CATE_4_3","66");*/

 

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

            window.onload = initialize;