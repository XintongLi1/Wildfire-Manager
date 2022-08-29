# Forest Protector
* A 1.5 days Hackathon project
 
<table>
<tr>
<td>
  Forest Protector, a platform aimed to forecast, report, and prevent wildfires.
What it does
Our app forest protector currently allows users to signup and shows a map with reported wildfires retrieved directly from NASA. For each wildfire that is indicated on Google Maps, it has images that people upload from the actual location, below that we have some information about the time, location, and name of the fire. We also provide links for users to know more about this incident. Finally, we also made a histogram analyzing the statistics through wildfires that happens within roughly a radius of 300 kilometers.
</td>
</tr>
<tr>
<td>
For our login page, we used Userfront to help us securely record the signup data. We used React and javascript to build our website, we also used Google map API and NASA API to retrieve the most recent wildfire information. For our backend, we used CockroachDB + typescript with Prisma to store the data of users, posts, geographical information, wildfire records, and histories.
</td>
</tr>
</table>

## Original Conception and Design

### Wildfire Manager
Detect and report Real-time Wildfire, forecast fire spreading speed and impact, notify the nearest fire station/brigade, allow users to upload images and textual description of the fire so then the model can make a better prediction based on the smoke intensity, direction and color.

Impact: infrastucture/property and forest/environment damage, personnel casualties

Data retrieval: history wildfires of the region, temperature, humidity, terrain, ecology, vegetations, species, wind direction and speed, etc

Report: number of volunteering participants and firefighters involved, situations (weather + fire), analysis and forecastion


### Database

1. Users: userID, role (ordinary users, firefighters), contactInfo, posts
2. Post: postID, author, time, description, images
3. Wildfire records: recordID, coordinates, time, wind speed and direction, property loss, casualties, posts by users
4. Area: areaID, region, coordinates, country, continent, ecology and other geographical information
5. Image: imageID, url, post
6. Coordinate: id, x, y, area, wildfire records



## By Team Roasted Geese
* [Xintong Li](https://github.com/XintongLi1) - Setup Cockroach serveless database, design and implement a relational database using Prisma and Typescript, programme data query and storage methods.
* [Mingyu Liu](https://github.com/mingyuliuu) - Design and implement map page UI; fetch and rendor data from our database; implement UI and algorithms for details side panel and histogram.
* [Alice Wang](https://github.com/alicewangzm) - Signup using Userfront, UI design for the login page
* [Raven Xu](https://github.com/RavenXu1122) - Developed the location search feature which enabled Google autocomplete; implemented panning to specific location.

## Demo Video
Click to see our demo :))  
[<img src="https://user-images.githubusercontent.com/59714584/187078384-2feaa977-e434-4371-9b36-b7f9612313ce.png" width=500 height=375>](https://www.youtube.com/watch?v=WRgjL2Rb_es&feature=youtu.be)

## Gallery
### Landing Page
<img src="https://user-images.githubusercontent.com/59714584/187076685-5f6cb1ab-f183-44a9-8a37-405e16dd528b.png">
 
Once you sign up and log in to our web app, you will be redirected to your dashboard, showing a full screen map with wildfire information!  

### Main Map Screen with Wildfire Animation Markers
<table>
 <tr>
  <img src="https://user-images.githubusercontent.com/59714584/187076849-3c3b55cf-ad49-4379-9b2b-ef68c77f26c3.png">
 </tr>
 <tr>
  Clicking on any indicated wildfire location, a details panel will pop up on the right. You will be presented with up-to-date images, as well as time and location details of the wildfire fetched from NASA API and from our user's contributions. 
 </tr>
 <tr>
   <img src="https://user-images.githubusercontent.com/59714584/187076998-475cdd94-d1f0-435a-a499-4a18b681db3a.png">
 </tr>
 <tr>
  You have a chance to learn more about the wildfire and its impact by simply clicking on the link icon (then you will be redirected to the external official website). We also use our own algorithm to present to you a histogram of the frequencies of wildfires in the local area that occured in each month during the past year.
 </tr>
 <tr>
   <img src="https://user-images.githubusercontent.com/59714584/187077650-85624818-565e-4078-95c6-9ad206add3c4.jpeg">
 </tr>
 <tr>
   A preview of our Cockroach Database
 </tr>
 <tr>
   <img src="https://user-images.githubusercontent.com/59714584/187077895-5c75ad65-d235-4872-a153-297b99b0064a.png">
 </tr>
</table>
  
## Development
This project is written in React.js. To get started,
* Clone the repo
* Run (`npm install`) then (`npm start`)
* You will then be prompted to your localhost for the webapp

## Built with 

- [React](https://reactjs.org)
- [NASA EONET API](https://eonet.gsfc.nasa.gov/docs/v2.1#categoriesAPI)
- [CockroachDB](https://www.cockroachlabs.com) + Typescript with [Prisma](https://www.prisma.io) to store the data of users, posts, geographical information, wildfire records and histories
- [Userfront](https://userfront.com) for user authentication

## To-do
* Implement location search engine
  * Pop up to retrieve user's permission for geo-location first
* Support real-time connection with nearest fire stations to help fight against wildfires
* Allow users to post comments and pictures that will be stored in our database
