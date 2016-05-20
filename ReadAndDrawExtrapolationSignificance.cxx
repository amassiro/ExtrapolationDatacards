void ReadAndDrawExtrapolationSignificance(std::string name = "asymptotic.signalInjected.hww-19.125.qqHWWlnln-WHSC2012-2012-30Oct-Shape2012"){
 
 Double_t file_vals  [80] =    {     1,      2,      3,     4,     5,     10,    20,    30,    50,    100,   200};
 char* file_vals_name[80] =    { "0001", "0002", "0003","0004","0005", "0010","0020","0030","0050", "0100","0200"};
 int n_points = 11;


 Double_t b_vals_exclusion[80];
 Double_t b_down_bars1_exclusion[80];
 Double_t b_up_bars1_exclusion[80];
 Double_t b_down_bars2_exclusion[80];
 Double_t b_up_bars2_exclusion[80];

 Double_t R_DATA_vals[80];
 Double_t R_DATA_vals_up[80];
 Double_t R_DATA_vals_down[80];
 
 
 
 std::string buffer;
 for (int iter = 0; iter < n_points; iter++){
//   std::string namefile = name + "-x"+file_vals_name[iter]+".out";
  std::string namefile = name + ".x"+file_vals_name[iter]+".txt";
  std::cout << " namefile[" << iter << "] = " << namefile << std::endl;
  std::ifstream file (namefile.c_str());
  while(!file.eof()){
    getline(file,buffer);
    std::cout << " buffer = " << buffer << std::endl;
    if (buffer != ""){ ///---> save from empty line at the end!
      std::stringstream line( buffer ); 
      std::string temp;
      // skip first 1 words    //  Significance: 1.92943
      line >> temp;
      if (temp == "Significance:") {
        line >> R_DATA_vals[iter];
      } 
    }
    
//     // skip first 3 lines
//     getline(file,buffer);
//     getline(file,buffer);
//     getline(file,buffer);
//     
//     std::cout << " buffer = " << buffer << std::endl;
//     
//     if (buffer != ""){ ///---> save from empty line at the end!
//       std::stringstream line( buffer ); 
//       std::string temp;
//       // skip first 1 words    //  Significance: 1.92943
//       line >> temp;
//       line >> R_DATA_vals[iter];
//     }
  }
 }
 
 
 
 
 //---- prepare to plot
 
 Double_t x_vals[80];
 for (int i = 0; i < n_points; i++){
  x_vals[i] = file_vals[i] * 2.3;  //---- current luminosity
 }

 
 TGraph* m_resolution_DATA_line_graph = new TGraph(n_points, x_vals, R_DATA_vals);
 m_resolution_DATA_line_graph->SetLineColor(kRed);
 m_resolution_DATA_line_graph->SetLineWidth(3);
 m_resolution_DATA_line_graph->SetLineStyle(1);
 m_resolution_DATA_line_graph->SetMarkerSize(1);
 m_resolution_DATA_line_graph->SetFillColor(kWhite);
 
 
 
 m_resolution_DATA_line_graph->GetYaxis()->SetTitle("#sigma discovery significance");
 m_resolution_DATA_line_graph->GetXaxis()->SetTitle("Luminosity (fb^{-1})");

 // canvas and draw
 TCanvas* cc = new TCanvas ("cc","cc",800,600);
//  m_resolution_DATA_line_graph->Draw("A30");
 m_resolution_DATA_line_graph->Draw("APL");
 m_resolution_DATA_line_graph->GetYaxis()->SetRangeUser(0,7);
 
 
 TLine *line1 = new TLine( x_vals[0], 5.0, x_vals[n_points], 5.0);
 line1->SetLineWidth(2);
 line1->SetLineStyle(2);
 line1->SetLineColor(kBlue);
 line1->Draw(); 
 
 
 cc->SetGrid();
 
 
}



