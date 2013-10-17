{
 
 Double_t file_vals[80] = {0.5, 1, 2, 5, 10, 100, 300};
 
 Double_t b_vals_exclusion[80];
 Double_t b_down_bars1_exclusion[80];
 Double_t b_up_bars1_exclusion[80];
 Double_t b_down_bars2_exclusion[80];
 Double_t b_up_bars2_exclusion[80];
 
 int iter = 0;
 
 std::string buffer;
 
 iter = 0 ;
 std::ifstream file ("resultsMedian.txt");  
 while(!file.eof()){
  getline(file,buffer);
  if (buffer != ""){ ///---> save from empty line at the end!
   std::stringstream line( buffer ); 
   line >> b_vals_exclusion[iter]; 
   iter++;
  }
 }
 
 iter = 0 ;
 std::ifstream file ("resultsM2.txt");  
 while(!file.eof()){
  getline(file,buffer);
  if (buffer != ""){ ///---> save from empty line at the end!
   std::stringstream line( buffer ); 
   line >> b_down_bars2_exclusion[iter]; 
   iter++;
  }
 }
 
 iter = 0 ;
 std::ifstream file ("resultsM1.txt");  
 while(!file.eof()){
  getline(file,buffer);
  if (buffer != ""){ ///---> save from empty line at the end!
   std::stringstream line( buffer ); 
   line >> b_down_bars1_exclusion[iter]; 
   iter++;
  }
 }
 
 iter = 0 ;
 std::ifstream file ("resultsP1.txt");  
 while(!file.eof()){
  getline(file,buffer);
  if (buffer != ""){ ///---> save from empty line at the end!
   std::stringstream line( buffer ); 
   line >> b_up_bars1_exclusion[iter]; 
   iter++;
  }
 }
 
 iter = 0 ;
 std::ifstream file ("resultsP2.txt");  
 while(!file.eof()){
  getline(file,buffer);
  if (buffer != ""){ ///---> save from empty line at the end!
   std::stringstream line( buffer ); 
   line >> b_up_bars2_exclusion[iter]; 
   iter++;
  }
 }
 
 n_points = iter;
 Double_t x_vals[80];
 for (int i = 0; i < n_points; i++){
  x_vals[i] = file_vals[i] * 20.;
 }


 for (int i = 0; i < n_points; i++){
  b_down_bars2_exclusion[i] = fabs( b_down_bars2_exclusion[i]-b_vals_exclusion[i]);
  b_down_bars1_exclusion[i] = fabs( b_down_bars1_exclusion[i]-b_vals_exclusion[i]);
  b_up_bars1_exclusion[i] = fabs( b_up_bars1_exclusion[i]-b_vals_exclusion[i]);
  b_up_bars2_exclusion[i] = fabs( b_up_bars2_exclusion[i]-b_vals_exclusion[i]);
 }
 
 
 // bkg hypothesis line
 TGraph* m_exclusion_b_line_graph = new TGraph(n_points, x_vals, b_vals_exclusion);
 m_exclusion_b_line_graph->SetMarkerSize(0);
 m_exclusion_b_line_graph->SetLineWidth(2);
 m_exclusion_b_line_graph->SetLineStyle(2);
 m_exclusion_b_line_graph->SetFillColor(kWhite);
 
 
 // bkg hypothesis band 1 sigma
 TGraphAsymmErrors* m_exclusion_b_band_graph_1sigma = new TGraphAsymmErrors(n_points,x_vals,b_vals_exclusion,0,0,b_down_bars1_exclusion,b_up_bars1_exclusion);
 m_exclusion_b_band_graph_1sigma->SetFillColor(kGreen);
 m_exclusion_b_band_graph_1sigma->SetFillStyle(3001);
 m_exclusion_b_band_graph_1sigma->SetLineColor(kGreen);
 m_exclusion_b_band_graph_1sigma->SetMarkerColor(kGreen);
 
 // bkg hypothesis band 2 sigma
 TGraphAsymmErrors* m_exclusion_b_band_graph_2sigma = new TGraphAsymmErrors(n_points,x_vals,b_vals_exclusion,0,0,b_down_bars2_exclusion,b_up_bars2_exclusion);
 m_exclusion_b_band_graph_2sigma->SetFillColor(kYellow);
 m_exclusion_b_band_graph_2sigma->SetFillStyle(3001);
 m_exclusion_b_band_graph_2sigma->SetLineColor(kYellow);
 m_exclusion_b_band_graph_2sigma->SetMarkerColor(kYellow);
 m_exclusion_b_band_graph_2sigma->GetYaxis()->SetTitle("95% CL limit on #sigma / #sigma_{SM}");
 m_exclusion_b_band_graph_2sigma->GetXaxis()->SetTitle("Luminosity (fb^{-1})");
 
 
 m_exclusion_b_band_graph_2sigma->Draw("A30");
 m_exclusion_b_band_graph_2sigma->SetTitle("");
 m_exclusion_b_band_graph_1sigma->Draw("30");
 m_exclusion_b_line_graph->Draw("LP");
 
 
 
}

