/**
 * @license Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
    config.language = 'zh-cn';
    config.toolbar = [
        ['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
        ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],
        ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
        ['Link','Unlink','Anchor'],
        ['Image','Table','HorizontalRule','Smiley','SpecialChar'],
        '/',
        ['Styles','Format','Font','FontSize'],
        ['TextColor','BGColor'],
        ['Cut','Copy','Paste','PasteText','PasteFromWord','-','Templates','-','Undo','Redo','-','Find','Replace'],
    ];


    config.removeDialogTabs = 'image:advanced;image:Link';
    config.image_previewText=' ';
    config.filebrowserImageUploadUrl= "/";//图片上传处理路径 name upload
    //需返回 $callback是ck get过去的一个数值 dir是路径
    //<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction(callback,dir);</script>
    //config.filebrowserUploadUrl = "/";

};
