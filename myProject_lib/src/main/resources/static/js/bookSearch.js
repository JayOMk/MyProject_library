$(document).ready(function() {
    $('#searchForm').submit(function(event) {
        event.preventDefault(); // 폼 기본 동작 중단

        var query = $('#query').val(); // 입력된 검색어 가져오기

        // AJAX 요청
        $.ajax({
            type: "GET",
            url: "/api",
            data: { query: query },
            success: function(response) {
                // 검색 결과를 화면에 출력
                displaySearchResults(response);
            },
            error: function(xhr, status, error) {
                console.error("Error:", error);
            }
        });
    });
});

// 검색 결과를 화면에 출력하는 함수
function displaySearchResults(results) {
    var searchResultsTable = $('#searchResults table tbody');
    searchResultsTable.empty(); // 이전 검색 결과 삭제

    // 결과를 반복하여 화면에 추가
    results.items.forEach(function(item) {
        var title = item.title;
        var image = item.image;
        var description = item.description;
        var author = item.author;
        var publisher = item.publisher;
        var pubdate = item.pubdate;

        // 결과 항목을 HTML로 만들어 추가
        var resultHtml = '<tr>' +
            '<td><img src="' + image + '" alt="책 표지"></td>' +
            '<td>' + title + '</td>' +
            '<td>' + author + '</td>' +
            '<td>' + description + '</td>' +
            '<td>' + publisher + '</td>' +
            '<td>' + pubdate + '</td>' +
            '</tr>';
        
        searchResultsTable.append(resultHtml);
    });
}