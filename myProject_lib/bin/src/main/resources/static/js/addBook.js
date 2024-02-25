document.getElementById("addBookForm").addEventListener("submit", function(event) {
    event.preventDefault();
    addBook();
});

function addBook() {
    var seqNo = document.getElementById("seqNo").value;
    var isbnThirteenNo = document.getElementById("isbnThirteenNo").value;
    // 기타 필드들 값 가져오기

    var data = {
        seqNo: seqNo,
        isbnThirteenNo: isbnThirteenNo,
        // 기타 필드들
    };

    fetch("/books/add", {
        method: "POST",
        body: JSON.stringify(data),
        headers: {
            "Content-Type": "application/json"
        }
    })
    .then(response => {
        if (!response.ok) {
            throw new Error("Error adding book");
        }
        alert("Book added successfully");
        location.reload(); // 페이지 새로고침
    })
    .catch(error => {
        console.error("Error:", error);
        alert("Failed to add book");
    });
}
