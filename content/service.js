const BASE = "http://localhost:3000";

function request(verb, endpoint, obj=null, cb=null) {
    print('request: ' + verb + ' ' + BASE + (endpoint ? '/' + endpoint : ''))
    var xhr = new XMLHttpRequest()
    xhr.onreadystatechange = function() {
        if(xhr.readyState === XMLHttpRequest.DONE) {
            if(cb) {
                print(xhr.responseText)
                var res = JSON.parse(xhr.responseText.toString())
                cb(res)
            }
        }
    }
    xhr.open(verb, BASE + (endpoint ? '/' + endpoint : ''))
    xhr.setRequestHeader('Content-Type', 'application/json')
    xhr.setRequestHeader('Accept', 'application/json')
    var data = obj ? JSON.stringify(obj) : ''
    xhr.send(data)
}

function getFlashcards(func) {
    request("GET", "flashcards/", null, func);
}

function validateLogin(obj, func) {
    request("POST", "users/login/", obj, func);
}

function deleteCard(flashcard_id) {
    request("DELETE", `flashcards/${flashcard_id}/`)
}
