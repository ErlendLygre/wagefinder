// var chart = new Chart(ctx, {
//   // The type of chart we want to create
//   type: 'horizontalBar',

//   // The data for our dataset
//   // <% @fields.each do |field| %>
//   data: {
//       // labels: ["January", "February", "March", "April", "May", "June", "July"],
//       labels: ['<%= field.name %>'],
//       datasets: [{
//           label: "Average Field by Wage",
//           backgroundColor: 'rgb(255, 99, 132)',
//           borderColor: 'rgb(255, 99, 132)',
//           // data: [0, 10, 5, 2, 20, 30, 45],
//           data: ['<%= field.avg_wage %>'],
//       }]
//   },

//   <% end %>

//   // Configuration options go here
//   options: {
//     scales: {
//       yAxis: [{
//         stacked: true
//       }]
//     }
//   }
// });
