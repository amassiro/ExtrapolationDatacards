void ReadAndDrawExtrapolation(std::string name = "asymptotic.signalInjected.hww-19.125.qqHWWlnln-WHSC2012-2012-30Oct-Shape2012"){
 
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
   // skip first 6 lines
   getline(file,buffer);
   std::cout << " buffer = " << buffer << std::endl;
   
   if (buffer != ""){ ///---> save from empty line at the end!

     std::stringstream line( buffer ); 
     std::string temp;
     // skip first 4 words    //  Best fit r: 1  -0.521743/+0.541867  (68% CL)
     line >> temp;
     if (temp == "Best") {
       line >> temp;
       line >> temp;
       line >> temp;
       
       line >> temp;
       std::istringstream temp_combined(temp);
       std::string temp_single;    
       std::vector<std::string> strings;
       while (getline(temp_combined, temp_single, '/')) {
         std::cout << temp_single << std::endl;
         strings.push_back(temp_single);
       }
       
       R_DATA_vals_down[iter] = atof(strings.at(0).c_str()); 
       R_DATA_vals_up[iter]   = atof(strings.at(1).c_str()); 
       R_DATA_vals[iter] = 1; 
     }
   }
  }
 }
 
 
 
 
 //---- prepare to plot
 
 Double_t x_vals[80];
 for (int i = 0; i < n_points; i++){
  x_vals[i] = file_vals[i] * 2.3;  //---- current luminosity
 }


 for (int i = 0; i < n_points; i++){
//    std::cout << " R_DATA_vals_down = " << R_DATA_vals_down[i] << " --> ";
   if (fabs(R_DATA_vals_down[i]) > 2) R_DATA_vals_down[i] = -R_DATA_vals_up[i];
   R_DATA_vals_down[i] = fabs( R_DATA_vals[i]+R_DATA_vals_down[i]);
//    std::cout << " R_DATA_vals_down = " << R_DATA_vals_down[i] << std::endl;
   R_DATA_vals_up[i]   = fabs( R_DATA_vals[i]+R_DATA_vals_up[i]);
 }
 
 
 
 TGraph* m_resolution_DATA_line_graph = new TGraph(n_points, x_vals, R_DATA_vals);
 m_resolution_DATA_line_graph->SetLineColor(kRed);
 m_resolution_DATA_line_graph->SetLineWidth(2);
 m_resolution_DATA_line_graph->SetLineStyle(1);
 m_resolution_DATA_line_graph->SetMarkerSize(1);
 m_resolution_DATA_line_graph->SetFillColor(kWhite);
 
 
 // bkg hypothesis line
 TGraph* m_resolution_b_line_graph_down = new TGraph(n_points, x_vals, R_DATA_vals_down);
 m_resolution_b_line_graph_down->SetLineColor(kRed);
 m_resolution_b_line_graph_down->SetMarkerSize(0);
 m_resolution_b_line_graph_down->SetLineWidth(4);
 m_resolution_b_line_graph_down->SetLineStyle(2);
 m_resolution_b_line_graph_down->SetFillColor(kWhite);
 
 TGraph* m_resolution_b_line_graph_up = new TGraph(n_points, x_vals, R_DATA_vals_up);
 m_resolution_b_line_graph_up->SetLineColor(kRed);
 m_resolution_b_line_graph_up->SetMarkerSize(0);
 m_resolution_b_line_graph_up->SetLineWidth(4);
 m_resolution_b_line_graph_up->SetLineStyle(3);
 m_resolution_b_line_graph_up->SetFillColor(kWhite);
 
 m_resolution_DATA_line_graph->GetYaxis()->SetTitle("#sigma / #sigma_{SM}");
 m_resolution_DATA_line_graph->GetXaxis()->SetTitle("Luminosity (fb^{-1})");

 // legend
 TLegend* m_resolution_legend = new TLegend(0.37,0.64,0.85,0.85);
 m_resolution_legend->SetName("");
 m_resolution_legend->SetLineColor(kWhite);
 m_resolution_legend->SetFillColor(0);
 m_resolution_legend->AddEntry(m_resolution_DATA_line_graph,"center");
 m_resolution_legend->AddEntry(m_resolution_b_line_graph_up,"+1 #sigma");
 m_resolution_legend->AddEntry(m_resolution_b_line_graph_down,"-1 #sigma");
 
 // canvas and draw
 TCanvas* cc = new TCanvas ("cc","cc",800,600);
//  m_resolution_DATA_line_graph->Draw("A30");
 m_resolution_DATA_line_graph->Draw("APL");
 m_resolution_DATA_line_graph->GetYaxis()->SetRangeUser(0,2);
 m_resolution_DATA_line_graph->SetTitle("");
 m_resolution_b_line_graph_up->Draw("LP");
 m_resolution_b_line_graph_down->Draw("PL");

 m_resolution_legend->Draw();
 cc->SetGrid();
 
 
}



