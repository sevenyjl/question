// ==UserScript==
// @name         Q-note【网站备忘录】
// @namespace    http://tampermonkey.net/
// @version      1.2.0
// @description  一个超超超好用的备忘录/记事本/笔记本～再也不用担心忘记什么啦！自动通过域名分类，适用于全部网站～超实用的生产力工具～
// @author       Priate
// @match        *://*/*
// @grant        GM_setValue
// @grant        GM_getValue
// @grant        GM_addStyle
// @grant        GM_setClipboard
// @connect     eemm.me
// @grant       GM_getValue
// @grant       GM_setValue
// @grant       GM_addStyle
// @grant       GM_deleteValue
// @grant       GM_xmlhttpRequest
// @grant       GM_setClipboard
// @grant       GM_registerMenuCommand
// @run-at      document-start
// @require      https://cdn.jsdelivr.net/npm/vue
// @icon         https://priate.oss-cn-beijing.aliyuncs.com/products/picture/icon/q-note.png
// @require      https://cdn.jsdelivr.net/npm/sweetalert@2.1.2/dist/sweetalert.min.js
// @supportURL   https://greasyfork.org/zh-CN/scripts/421876/feedback
// @source       https://github.com/PriateXYF
// @license      MIT
// ==/UserScript==

(function () {
    'use strict';

    function initSetting() {
        if (!GM_getValue('priate_script_note_data')) {
            GM_setValue('priate_script_note_data', [])
        }
        if (!GM_getValue('priate_script_note_setting')) {
            GM_setValue('priate_script_note_setting', {
                hide: true,
                number: 0,
                left: 20,
                top: 100
            })
        }
    }

    function injectDiv() {
        var priate_script_div = document.createElement("div")
        priate_script_div.innerHTML = `
<div id="priate_script_div" :class="setting.hide || add ? '' : 'priate_script_hide'">
    <span v-show="!setting.hide" @click="showScript" class="hide-button">{{hideTipe}}</span>
    <div v-show="setting.hide">
    <button id="moveBtn">移动</button>
        <button @click="showAdd">添加</button>
        <button @click='hideScript'>隐藏</button>
        <button id='readme' @click="clearHostData" v-show="filterData.length > 0">清空</button>
        <button @click='resetScript'>重置</button>
        <button @click='exportScript'>导出</button>
        <button @click='importFlag=true'>导入</button>
        <input v-model='searchKey'/>
        </br>
        <span v-show="importFlag">
             <input v-model="importData">
            <button @click="importFlag=false">取消</button>
            <button @click="importMethod">确定</button>
        </span>
        <table v-show="filterData.length > 0">
            <thead>
            <tr>
                <th>内容</th>
                <th>时间</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody id="priate_script_table">
            <tr v-for="(item, index) in filterData" key="index">
                <td v-show="!item.isHide"><textarea style='color:#337ab7;resize: both' >{{item.content}}</textarea>
                </td>
                <td v-show="item.isHide"><a style='color:blue' @click="showNote(item.id)">显示</a> | <a style='color:red'
                                                                                                      @click="copyNote(item.content)">复制</a>
                </td>
                <td>{{item.time}}</td>
                <td><a style='color:#993333' @click="deleteNote(item.id)">删除</a> | <a style='color:green'
                                                                                      @click="editNote(item.id)">修改</a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    <div id="add_note" v-show="add">
        <h2>添加记录</h2>
        <table>
            <tr>
                <td>
                    <textarea style="resize: both" v-on:keydown.enter="submitAddNote" v-model="note.content" placeholder="添加笔记"></textarea>
                    <input v-model="note.isHide" type="checkbox">隐藏文本</input>
                </td>
            </tr>
            <tr>
                <td>
                    <button v-show="isCancle" @click="hideAdd">取消</button>
                    <button @click="addNote">确定</button>
                </td>
            </tr>
        </table>
    </div>
</div>
`
        GM_addStyle(`
#priate_script_div {
        font-size: 15px;
        position: fixed;
        /*background-color: rgba(240, 223, 175, 0.9);*/
        color: #660000;
        text-align: center;
        padding: 10px;
        z-index: 2147483647;
        border-radius: 20px;
        border: 2px solid black;
    }

    #priate_script_div:hover {
        box-shadow: 5px 5px 5px #000000;
        transition: box-shadow 0.3s;
    }

    .priate_script_hide {
        padding: 0 !important;
        border: none !important;
    }

    a {
        cursor: pointer;
        text-decoration: none;
    }

    /*表格样式*/
    #priate_script_div table {
        text-align: center;
        border: 2px solid #660000;
        margin: 5px auto;
        padding: 2px;
        border-collapse: collapse;
        width: 100%;
    }

    /*表格框样式*/
    #priate_script_div td {
        border: 2px solid #660000;
        /* padding: 8px 12px;*/
        /* max-width: 300px;*/
        word-wrap: break-word;
    }

    /*表头样式*/
    #priate_script_div th {
        border: 2px solid #660000;
        padding: 8px 12px;
    }

    /*脚本按钮样式*/
    #priate_script_div button {
        display: inline-block;
        border-radius: 4px;
        border: 1px solid #660000;
        background-color: transparent;
        color: #660000;
        text-decoration: none;
        padding: 5px 10px;
        margin: 5px 10px;
    }

    /*脚本按钮悬浮样式*/
    #priate_script_div button:hover {
        cursor: pointer;
        /*color: rgb(240, 223, 175);*/
        background-color: #660000;
    }

    /*右下角显示按钮*/
    #priate_script_div .hide-button {
        z-index: 2147483647;
        width: 32px;
        height: 32px;
        cursor: pointer;
        position: fixed;
        left: 0px;
        bottom: 0px;
        color: #660000;
        text-align: center;
        line-height: 32px;
        margin: 10px;
        border-width: 1px;
        border-style: solid;
        border-color: #660000;
        border-image: initial;
        border-radius: 100%;
    }

    /*右下角显示按钮悬浮样式*/
    #priate_script_div .hide-button:hover {
        /*background-color: rgba(240, 223, 175, 0.9);*/
    }

    /*输入框样式*/
    #priate_script_div textarea {
        height: 50px;
        width: 100%;
        background-color: #fff;
        border: 1px solid #000000;
        padding: 4px;
    }
`);
        document.querySelector("html").appendChild(priate_script_div)
        var setting = GM_getValue('priate_script_note_setting')
        document.getElementById("priate_script_div").style.left = (setting.left || 20) + "px";
        document.getElementById("priate_script_div").style.top = (setting.top || 100) + "px";
    }

    function dragFunc(id) {
        var Drag = document.getElementById(id);
        var moveBtn = document.getElementById("moveBtn");
        var setting = GM_getValue('priate_script_note_setting')
        moveBtn.onmousedown = function (event) {
            var ev = event || window.event;
            event.stopPropagation();
            var disX = ev.clientX - Drag.offsetLeft;
            var disY = ev.clientY - Drag.offsetTop;
            document.onmousemove = function (event) {
                var ev = event || window.event;
                setting.left = ev.clientX - disX
                Drag.style.left = setting.left + "px";
                setting.top = ev.clientY - disY
                Drag.style.top = setting.top + "px";
                Drag.style.cursor = "move";
                GM_setValue('priate_script_note_setting', setting)
            };
        };
        Drag.onmouseup = function () {
            document.onmousemove = null;
            this.style.cursor = "default";
        };
    };

    // 获取当前时间
    function getNowFormatDate() {
        var date = new Date();
        var seperator1 = "-";
        var seperator2 = ":";
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        }
        var currentdate = month + seperator1 + strDate + " " + date.getHours() + seperator2 + date.getMinutes()
        return currentdate;
    }

    //初始化脚本设置
    initSetting()
    //注入脚本div
    injectDiv()
    // 处理数据等逻辑
    var vm = new Vue({
        el: '#priate_script_div',
        data: {
            importData: '',
            importFlag: false,
            searchKey: '',
            isCancle: true,
            setting: GM_getValue('priate_script_note_setting'),
            add: false,
            //添加的内容
            note: {
                content: "",
                // 是否隐藏
                isHide: false,
            },
            data: GM_getValue('priate_script_note_data'),
        },
        methods: {
            importMethod() {
                const _this = this;
                var parse = JSON.parse(this.importData);
                var origan_data = GM_getValue('priate_script_note_data')
                parse.forEach(s => {
                    s.id = _this.setting.number++
                    s.host = location.host
                    origan_data.push(s)
                })
                GM_setValue('priate_script_note_data', origan_data)
                this.data = origan_data
                console.log(origan_data)
                //清除
                this.importFlag = false
                this.importData = ''
            },
            hideScript() {
                this.setting.hide = false
                GM_setValue('priate_script_note_setting', this.setting)
                //swal("已隐藏!可以在左下角重新召唤出来哦～", {
                //     icon: "success",
                //     buttons: false,
                //     timer: 1500,
                // });
            },
            showScript() {
                this.setting.hide = true
                this.add = false
                GM_setValue('priate_script_note_setting', this.setting)
            },
            showAdd() {
                this.add = true
                this.setting.hide = false
            },
            hideAdd() {
                this.add = false
                this.setting.hide = true
            },
            clearNote() {
                this.note = {
                    content: "",
                    // 是否隐藏
                    isHide: false,
                }
            },
            addNote() {
                this.isCancle = true
                if (this.note.content.trim() == "") {
                    swal("你还没有填写内容哦～", {
                        icon: "warning",
                        buttons: false,
                        timer: 1500,
                    });
                    return
                }
                var origan_data = GM_getValue('priate_script_note_data')
                this.note.id = this.setting.number++
                this.note.time = getNowFormatDate()
                this.note.host = location.host
                origan_data.push(this.note)
                GM_setValue('priate_script_note_data', origan_data)
                this.data = origan_data
                this.hideAdd()
                GM_setValue('priate_script_note_setting', this.setting)
                this.clearNote()
                this.hideScript()
            },
            // 重置脚本数据
            resetScript() {
                var _this = this
                swal({
                    title: "是否重置全部脚本数据？",
                    text: "重置后将清空全部数据并将设置变为默认!",
                    icon: "warning",
                    buttons: true
                }).then((willDelete) => {
                    if (willDelete) {
                        swal("重置成功!", {
                            icon: "success",
                            buttons: false,
                            timer: 1000,
                        });
                        GM_setValue('priate_script_note_data', [])
                        GM_setValue('priate_script_note_setting', {
                            hide: true,
                            number: 0,
                            left: 20,
                            top: 100
                        })
                        // 重新渲染样式和数据
                        _this.data = []
                        _this.importFlag = false
                        _this.importData = ''
                        document.getElementById("priate_script_div").style.left = "20px";
                        document.getElementById("priate_script_div").style.top = "100px";
                    }
                })
            },
            exportScript() {
                //alert(JSON.stringify(this.data))

                console.log(JSON.stringify(GM_getValue('priate_script_note_data')))
                GM_setClipboard(JSON.stringify(GM_getValue('priate_script_note_data')))
            },
            editNote(id) {
                this.isCancle = false
                var origan_data = GM_getValue('priate_script_note_data');
                var old_data = origan_data.filter((item) => item.id == id);
                console.log(old_data[0])
                this.note = old_data[0]
                //删除
                var del_data = origan_data.filter((item) => item.id != id);
                GM_setValue('priate_script_note_data', del_data)
                this.data = del_data
                this.add = true
            },
            deleteNote(id) {
                swal({
                    title: "确定删除?",
                    text: "删除后将无法恢复数据!",
                    icon: "warning",
                    buttons: true,
                }).then((willDelete) => {
                    if (willDelete) {
                        swal("删除成功!", {
                            icon: "success",
                            buttons: false,
                            timer: 1000,
                        });
                        var origan_data = GM_getValue('priate_script_note_data');
                        var new_data = origan_data.filter((item) => item.id != id);
                        GM_setValue('priate_script_note_data', new_data);
                        this.data = new_data;
                    }
                });
            },
            // 清空站点全部记录
            clearHostData() {
                swal({
                    title: "是否清空数据？？",
                    text: "将会清空当前站点【" + location.host + "】下的全部数据！",
                    icon: "warning",
                    buttons: true
                }).then((willDelete) => {
                    if (willDelete) {
                        swal("清除成功!", {
                            icon: "success",
                            buttons: false,
                            timer: 1000,
                        });
                        var origan_data = GM_getValue('priate_script_note_data')
                        var new_data = origan_data.filter((item) => item.host != location.host)
                        GM_setValue('priate_script_note_data', new_data)
                        this.data = new_data
                    }
                })
            },
            // 显示隐藏的内容
            showNote(id) {
                for (var index in this.data) {
                    if (this.data[index].id == id) {
                        this.data[index].isHide = false
                        var item = this.data[index]
                        // 恢复隐藏状态
                        setTimeout(function () {
                            item.isHide = true
                        }, 1000)
                        break
                    }
                }
            },
            copyNote(content) {
                console.log(content)
                GM_setClipboard(content)
                swal("复制成功!", {
                    icon: "success",
                    buttons: false,
                    timer: 1000,
                });
            },
            //快捷键功能
            submitAddNote(e) {
                if (e.metaKey || e.altKey) {
                    this.addNote()
                }
            },
        },
        computed: {
            filterData() {
                const that = this;
                return this.data.filter((item) => item.host == location.host)
                    .filter((item) => item.content.search(that.searchKey) > -1)
            },
            hideTipe() {
                return this.filterData.length
            }
        },
        mounted() {
            var _this = this;
            document.onkeydown = function (event) {
                const keyCode = event.keyCode || event.which || event.charCode;
                const ctrlKey = event.ctrlKey;
                var shiftKey = event.shiftKey;
                const altKey = event.altKey;
                if (shiftKey && keyCode == 81) {
                    console.log("按下了Ctrl + Q键");
                    const msg = window.getSelection().toString();
                    var origan_data = GM_getValue('priate_script_note_data')
                    _this.note.content = msg
                    _this.note.id = _this.setting.number++
                    _this.note.time = getNowFormatDate()
                    _this.note.host = location.host
                    _this.note.isHide = false
                    if (_this.add) {
                        _this.add = false
                    } else {
                        _this.add = true
                    }
                    //origan_data.push(_this.note)
                    //GM_setValue('priate_script_note_data', origan_data)
                    //_this.data = origan_data
                    //GM_setValue('priate_script_note_setting', _this.setting)
                    //_this.clearNote()
                } else if (shiftKey && keyCode == 87) {
                    console.log("按下了Ctrl + W键,隐藏面板", _this.setting.hide);
                    _this.setting.hide = !_this.setting.hide
                } else if (shiftKey && keyCode == 69) {
                    console.log("按下了Ctrl + E键,快速搜索");
                    const msg = window.getSelection().toString().trim();
                    _this.searchKey = msg
                    if (_this.setting.hide) {
                        _this.setting.hide = false
                    } else {
                        _this.setting.hide = true
                    }
                }
            }
        },
    })
    //设置div可拖动
    dragFunc("priate_script_div");

    function test() {
        console.log("离开就离开了~")
    }

    window.onblur = test;
})();
