<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<style>
  body {
    width: 100%;
    height: 100vh;
    margin: 0;
    padding: 0;
  }
  .center {
    width: 100%;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    background: linear-gradient(
      to right,
      rgb(162, 216, 162),
      rgb(102, 194, 102)
    );
  }
  .tickets {
    width: 550px;
    height: fit-content;
    border: 0.4mm solid rgba(0, 0, 0, 0.08);
    border-radius: 3mm;
    box-sizing: border-box;
    padding: 10px;
    font-family: poppins;
    max-height: 96vh;
    overflow: auto;
    background: white;
    box-shadow: 0px 25px 50px -12px rgba(0, 0, 0, 0.25);
  }
  .ticket-selector {
    background: rgb(243, 243, 243);
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-direction: column;
    box-sizing: border-box;
    padding: 20px;
  }
  .head {
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 30px;
  }
  .title {
    font-size: 16px;
    font-weight: 600;
  }
  .seats {
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    min-height: 150px;
    position: relative;
  }
  .status {
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: space-evenly;
  }
  .seats::before {
    content: "";
    position: absolute;
    bottom: 0;
    left: 50%;
    transform: translate(-50%, 0);
    width: 220px;
    height: 7px;
    background: rgb(141, 198, 255);
    border-radius: 0 0 3mm 3mm;
    border-top: 0.3mm solid rgb(180, 180, 180);
  }
  .item {
    font-size: 12px;
    position: relative;
  }
  .item::before {
    content: "";
    position: absolute;
    top: 50%;
    left: -12px;
    transform: translate(0, -50%);
    width: 10px;
    height: 10px;
    background: rgb(255, 255, 255);
    outline: 0.2mm solid rgb(120, 120, 120);
    border-radius: 0.3mm;
  }
  .item:nth-child(2)::before {
    background: rgb(180, 180, 180);
    outline: none;
  }
  .item:nth-child(3)::before {
    background: rgb(28, 185, 120);
    outline: none;
  }
  .all-seats {
    display: grid;
    grid-template-columns: repeat(10, 1fr);
    grid-gap: 15px;
    margin: 60px 0;
    margin-top: 20px;
    position: relative;
  }
  .seat {
    width: 20px;
    height: 20px;
    background: white;
    border-radius: 0.5mm;
    outline: 0.3mm solid rgb(180, 180, 180);
    cursor: pointer;
  }
  .all-seats input:checked + label {
    background: rgb(28, 185, 120);
    outline: none;
  }
  .seat.booked {
    background: rgb(180, 180, 180);
    outline: none;
  }
  input {
    display: none;
  }
  .timings {
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    margin-top: 30px;
  }
  .dates {
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  .dates-item {
    width: 50px;
    height: 40px;
    background: rgb(233, 233, 233);
    text-align: center;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    padding: 10px 0;
    border-radius: 2mm;
    cursor: pointer;
  }
  .day {
    font-size: 12px;
  }
  .times {
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-top: 10px;
  }
  .time {
    font-size: 14px;
    width: fit-content;
    padding: 7px 14px;
    background: rgb(233, 233, 233);
    border-radius: 2mm;
    cursor: pointer;
  }
  .timings input:checked + label {
    background: rgb(28, 185, 120);
    color: white;
  }
  .price {
    width: 100%;
    box-sizing: border-box;
    padding: 10px 20px;
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  .total {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    justify-content: center;
    font-size: 16px;
    font-weight: 500;
  }
  .total span {
    font-size: 11px;
    font-weight: 400;
  }
  .price button {
    background: rgb(60, 60, 60);
    color: white;
    font-family: poppins;
    font-size: 14px;
    padding: 7px 14px;
    border-radius: 2mm;
    outline: none;
    border: none;
    cursor: pointer;
  }
</style>
</head>
<body>
<div class="center">
  <div class="tickets">
    <div class="ticket-selector">
      <div class="head">
        <div class="title">Movie Name</div>
      </div>
      <div class="seats">
        <div class="status">
          <div class="item">Available</div>
          <div class="item">Booked</div>
          <div class="item">Selected</div>
        </div>
        <div class="all-seats">
          <!-- Dynamic generation of seats -->
          <% 
            for (int i = 0; i < 59; i++) {
              // Randomly determine if the seat is booked or not
              int randint = (int)(Math.random() * 2);
              String booked = (randint == 1) ? "booked" : "";
          %>
          <input type="checkbox" name="tickets" id="s<%= i + 2 %>" />
          <label for="s<%= i + 2 %>" class="seat <%= booked %>"></label>
          <% } %>
        </div>
      </div>
      <div class="timings">
        <div class="dates">
          <!-- Dates -->
          <%
            String[] days = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
            for (int i = 0; i < days.length; i++) {
          %>
          <input type="radio" name="date" id="d<%= i + 1 %>" <%= (i == 0) ? "checked" : "" %> />
          <label for="d<%= i + 1 %>" class="dates-item">
            <div class="day"><%= days[i] %></div>
            <div class="date"><%= i + 11 %></div>
          </label>
          <% } %>
        </div>
        <div class="times">
          <!-- Times -->
          <%
            String[] times = {"11:00", "14:30", "18:00", "21:30"};
            for (int i = 0; i < times.length; i++) {
          %>
          <input type="radio" name="time" id="t<%= i + 1 %>" <%= (i == 0) ? "checked" : "" %> />
          <label for="t<%= i + 1 %>" class="time"><%= times[i] %></label>
          <% } %>
        </div>
      </div>
    </div>
    <div class="price">
      <div class="total">
        <span><span class="count">0</span> Tickets</span>
        <div class="amount">0</div>
      </div>
      <a href="bill.jsp">
      <button type="button">Book</button>
      </a>
    </div>
  </div>
</div>
<script>
  let seats = document.querySelector(".all-seats");
  let tickets = seats.querySelectorAll("input");
  tickets.forEach((ticket) => {
    ticket.addEventListener("change", () => {
      let amount = document.querySelector(".amount").innerHTML;
      let count = document.querySelector(".count").innerHTML;
      amount = Number(amount);
      count = Number(count);
      if (ticket.checked) {
        count += 1;
        amount += 200;
      } else {
        count -= 1;
        amount -= 200;
      }
      document.querySelector(".amount").innerHTML = amount;
      document.querySelector(".count").innerHTML = count;
    });
  });
</script>
</body>
</html>
 