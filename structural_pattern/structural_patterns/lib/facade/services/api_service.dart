class ApiService{
  List<Map<String,dynamic>> apidata=[
  {"name":"siva",
  "id":15,
  "age":22},
  {"name":"bharu",
  "id":17,
  "age":28}

  ];

  //method to get this data
 List<Map<String,dynamic>>  getApiData()=>apidata;
}