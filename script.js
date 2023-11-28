const submitBtn = document.getElementById("submit");
const answer = document.querySelectorAll(".answer");
const quiz = document.getElementById("question");

let currentQuestionIndex = 0;
let mark = 0;

loadQuestions();

function loadQuestions() {
  removeAnswer();
  submitBtn.disabled = true;

  fetch("http://localhost/restful_php_api/api/question/read.php")
    .then((res) => res.json())
    .then((data) => {
      // console.log(data);

      dataLength = data.question.length;

      const questionTitle = document.getElementById("title");

      const cauA = document.getElementById("answer_a");
      const cauB = document.getElementById("answer_b");
      const cauC = document.getElementById("answer_c");
      const cauD = document.getElementById("answer_d");

      const currentQuestion = data.question[currentQuestionIndex];

      // console.log(currentQuestion);

      questionTitle.innerText = currentQuestion.title;
      cauA.innerText = currentQuestion.cau_a;
      cauB.innerText = currentQuestion.cau_b;

      if (currentQuestion.cau_c != null) {
        document.getElementById("groupC").classList.remove("hidden-answer");
        cauC.innerText = currentQuestion.cau_c;
      } else {
        document.getElementById("groupC").classList.add("hidden-answer");
      }

      if (currentQuestion.cau_d != null) {
        document.getElementById("groupD").classList.remove("hidden-answer");
        cauD.innerText = currentQuestion.cau_d;
      } else {
        document.getElementById("groupD").classList.add("hidden-answer");
      }

      document.getElementById("correctAnswer").value = currentQuestion.cau_dung;
      document.getElementById("questionAmount").value = data.question.length;
    })
    .catch((error) => console.log(error));
}

function getAnswer() {
  let result = undefined;
  answer.forEach((localAnswer) => {
    if (localAnswer.checked) {
      result = localAnswer.id;
    }
  });
  return result;
}

function removeAnswer() {
  answer.forEach((answer) => {
    answer.checked = false;
  });
}

// Check if the answer is checked
answer.forEach((elem) => {
  elem.addEventListener("change", function(event) {
    submitBtn.removeAttribute("disabled");
  });
});

submitBtn.addEventListener("click", () => {
  const result = getAnswer();
  if (result) {
    if (result === document.getElementById("correctAnswer").value) {
      mark++;
    }
  }

  if (currentQuestionIndex < document.getElementById("questionAmount").value - 1) {
    currentQuestionIndex++;
    loadQuestions();
  } else {
    const questionAmount = document.getElementById("questionAmount").value;
    quiz.innerHTML = `
    <h2>Bạn đã đúng ${mark}/${questionAmount} câu hỏi.</h2>
    <button onclick="location.reload()">Làm lại</button>
    `;
  }
});
