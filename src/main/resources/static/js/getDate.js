
$(function () {
    $.post({
        url:'user/getAll',
        success:function (data) {

               for(var i=0;i<data.length;i++){

                   var text="  <tr>\n" +
                       "            <th>"+data[i].id+"</th>\n" +
                       "            <th>"+data[i].username+"</th>\n" +
                       "            <th>"+data[i].password+"</th>\n" +
                       "            <th>"+data[i].createtime+"</th>\n" +
                       "            <th>"+data[i].status+"</th>\n" +
                       "            <td>\n" +
                       "                <a href=\"user/delById?id="+data[i].id+"\" class=\"btn btn-danger\">删除</a>\n" +
                       "                <a href=\"update.html?id="+data[i].id+"\" class=\"btn btn-success\">修改</a>\n" +
                       "            </td>\n" +
                       "        </tr>"
                  var obj= $(".pool");
                   obj.append(text);
               }
        }
    })
});