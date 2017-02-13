<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel = "stylesheet" type = "text/css" media = "screen" href = "/webapp/css/jquery-ui-1.10.3.custom.min.css"/>
<link rel = "stylesheet" type = "text/css" media = "screen" href = "/webapp/css/ui.jqgrid.css"/>

<script src = "/webapp/js/jquery-1.9.0.min.js" type = "text/javascript"></script>
<script src = "/webapp/js/i18n/grid.locale-kr.js" type = "text/javascript"></script>
<script src = "/webapp/js/jquery.jqGrid.min.js" type = "text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function() {
        jQuery("#grid").jqGrid({
            url : 'home',
            caption : 'Daum SNS Pic',    // caption : 그리드의 제목을 지정한다.
            datatype : 'json',               // datatype : 데이터 타입을 지정한다.
                                                    // (json 으로 외부에 요청을 보내면 보안정책에 위배되어 요청이 나가질 않는다.
                                                    //  따라서 datatype 을 jsonp로 변경하고 보내야 한다.)

//             mtype : 'get',                     // mtype : 데이터 전송방식을 지정한다.
//             height : '500px',                 // height : 그리드의 높이를 지정한다.
//             pager : '#pager',               // pager : 도구 모임이 될 div 태그를 지정한다.
//             rowNum : 3,                      // rowNum : 한 화면에 표시할 행 개수를 지정한다.
//             loadonce : true,                // loadonce : rowNum 설정을 사용하기 위해서 true로 지정한다.
//             rowList : [3, 6, 9, 10],       // rowList : rowNum을 선택할 수 있는 옵션을 지정한다.

            // colNames : 열의 이름을 지정한다.
//             colNames : [ '순위', '소셜픽키워드', '이슈에 대한 링크 URL', '요약문', '검색수', '트윗수', '검색 결과의 페이지 번호', '순위 상승/하락수', '카테고리' ],
            colModel : [
                        { name : 'empno',            index : 'empno',                width : 40,        align : 'center', label : "사원번호" },
                        { name : 'job',         index : 'job',            width : 100,    align : 'left' , label : "직책"  },
                        { name : 'ename',             index : 'ename',                width : 100,    align : 'left' , label : "사원이름"  },
                        { name : 'comm',         index : 'comm',            width : 200,    align : 'left' , label : "상여금"  },
//                         { name : 'count',             index : 'count',            width : 100,    align : 'center' },
//                         { name : 'quotation_cnt',    index : 'quotation_cnt',    width : 100,    align : 'center' },
//                         { name : 'comment_cnt',     index : 'comment_cnt',         width : 100,    align : 'center' },
//                         { name : 'rank_diff',         index : 'rank_diff',         width : 100,    align : 'center' },
//                         { name : 'category',         index : 'category',         width : 100,    align : 'center' }
                        ]
            
            // jqGrid 에서 default 형태의 JSON 이 아닌 소셜픽만의 고유의 json 형태로 날아오기에.
            // 소셜픽의 API 를 바꿀 순 없어, jqGrid 에서 json을 
            // customizing하여 사용하기 위해 jsonReader를 사용했다.
//             jsonReader : {
//                             repeatitems : false,
//                             id : "rank",
//                             root : function (obj) { return obj.socialpick.item; },
//                             page : function (obj) { return 1; },
//                             total : function (obj) { return 1; },
//                             records : function (obj) {return obj.socialpick.item.length; }
//             }

        // navGrid() 메서드는 검색 및 기타기능을 사용하기위해 사용된다.
        }).navGrid('#pager', {
            search : true,
            edit : true,
            add : true,
            del : true
        });
    });
</script>
<title>jqGrid</title>
</head>
<body>
     // jqGrid 플러그인을 사하기위한 table 태그와 div태그 사용
     
    <table id = "grid">
<!--     <tr><th>0</th></tr> -->
<!--     <tr><td>1</td></tr> -->
<!--     <tr><td>2</td></tr> -->
<!--     <tr><td>3</td></tr> -->
<!--     <tr><td>4</td></tr> -->
    </table>
    <div id = "pager"></div>
</body>
</html>