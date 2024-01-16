/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
const myParam = location.search.split('error=')[1];
const alert = document.getElementById("alert");

if (myParam === "notfound") {
    setTimeout(() => {
        alert.classList.toggle("d-none");
    }, 0);
    setTimeout(() => {
        alert.classList.toggle("d-none");
    }, 3500);
}

console.log(myParam);