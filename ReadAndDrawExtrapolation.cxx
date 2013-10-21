{
 
//  std::string name = "asymptotic.hww-19.125.qqHWWlnln-WHSC2012-2012-26Jun-Cut2012";
//  std::string name = "asymptotic.hww-19.125.qqHWWlnln-WHSC2012-2012-26Jun-Shape2012";
 std::string name = "asymptotic.signalInjected.hww-19.125.qqHWWlnln-WHSC2012-2012-26Jun-Shape2012";
 
 
 
//  Double_t file_vals  [80] =    {     0,    0.5,         1,      2,      5,     10,   100,    300 };
//  char* file_vals_name[80] =    {"0000", "0005", "0010", "0020", "0050", "0100", "1000", "3000"};
//  int n_points = 7;

 Double_t file_vals  [80] =    {    0.1,    0.2,    0.3,    0.4,    0.5,    0.6,    0.7,    0.8,    0.9,          1,      2,      3,      4,      5,     10,     20,     30,     40,     50,   100,    300,    900 };
 char* file_vals_name[80] =    { "0001", "0002", "0003", "0004", "0005", "0006", "0007", "0008", "0009",     "0010", "0020", "0030", "0040", "0050", "0100", "0200", "0300", "0400", "0500", "1000", "3000", "9000"};
 int n_points = 20+1;


 Double_t b_vals_exclusion[80];
 Double_t b_down_bars1_exclusion[80];
 Double_t b_up_bars1_exclusion[80];
 Double_t b_down_bars2_exclusion[80];
 Double_t b_up_bars2_exclusion[80];

 Double_t R_DATA_vals[80];
 
 
 std::string buffer;
 for (int iter = 0; iter < n_points; iter++){
  std::string namefile = name + "-x"+file_vals_name[iter]+".out";
  std::cout << " namefile[" << iter << "] = " << namefile << std::endl;
  std::ifstream file (namefile.c_str());
  while(!file.eof()){
   // skip first 4 lines
   getline(file,buffer);
   getline(file,buffer);
   getline(file,buffer);
   getline(file,buffer);

   if (buffer != ""){ ///---> save from empty line at the end!
    std::stringstream line( buffer ); 
    std::string temp;
    // skip first 4 words
    line >> temp;
    line >> temp;
    line >> temp;
    line >> temp;
    line >> R_DATA_vals[iter]; 
  }
  
  
   getline(file,buffer);
   if (buffer != ""){ ///---> save from empty line at the end!
    std::stringstream line( buffer ); 
    std::string temp;
    // skip first 4 words
    line >> temp;
    line >> temp;
    line >> temp;
    line >> temp;
    line >> b_down_bars2_exclusion[iter]; 
   }
   
   getline(file,buffer);
   if (buffer != ""){ ///---> save from empty line at the end!
    std::stringstream line( buffer ); 
    std::string temp;
    // skip first 4 words
    line >> temp;
    line >> temp;
    line >> temp;
    line >> temp;
    line >> b_down_bars1_exclusion[iter]; 
   }
   
   getline(file,buffer);
   if (buffer != ""){ ///---> save from empty line at the end!
    std::stringstream line( buffer ); 
    std::string temp;
    // skip first 4 words
    line >> temp;
    line >> temp;
    line >> temp;
    line >> temp;
    line >> b_vals_exclusion[iter]; 
   }
   
   getline(file,buffer);
   if (buffer != ""){ ///---> save from empty line at the end!
    std::stringstream line( buffer ); 
    std::string temp;
    // skip first 4 words
    line >> temp;
    line >> temp;
    line >> temp;
    line >> temp;
    line >> b_up_bars1_exclusion[iter]; 
   }
   
   getline(file,buffer);
   if (buffer != ""){ ///---> save from empty line at the end!
    std::stringstream line( buffer ); 
    std::string temp;
    // skip first 4 words
    line >> temp;
    line >> temp;
    line >> temp;
    line >> temp;
    line >> b_up_bars2_exclusion[iter]; 
   }
  }
 }
 
 
 
 
 
 
 //---- prepare to plot
 
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
 
 
 
 TGraph* m_exclusion_DATA_line_graph = new TGraph(n_points, x_vals, R_DATA_vals);
 m_exclusion_DATA_line_graph->SetLineWidth(2);
 m_exclusion_DATA_line_graph->SetLineStyle(1);
 m_exclusion_DATA_line_graph->SetMarkerSize(1);
 m_exclusion_DATA_line_graph->SetFillColor(kWhite);
 
 
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

 // legend
 TLegend* m_exclusion_legend = new TLegend(0.27,0.74,0.50,0.94);
 m_exclusion_legend->SetName("R Exclusion");
 m_exclusion_legend->SetLineColor(kWhite);
 m_exclusion_legend->SetFillColor(0);
 m_exclusion_legend->AddEntry(m_exclusion_b_line_graph,"median expected");
 m_exclusion_legend->AddEntry(m_exclusion_b_band_graph_1sigma,"expected #pm 1#sigma");
 m_exclusion_legend->AddEntry(m_exclusion_b_band_graph_2sigma,"expected #pm 2#sigma");
 m_exclusion_legend->AddEntry( m_exclusion_DATA_line_graph,"observed");
 
 // canvas and draw
 TCanvas* cc = new TCanvas ("cc","cc",800,600);
 m_exclusion_b_band_graph_2sigma->Draw("A30");
 m_exclusion_b_band_graph_2sigma->SetTitle("");
 m_exclusion_b_band_graph_1sigma->Draw("30");
 m_exclusion_b_line_graph->Draw("LP");
 m_exclusion_DATA_line_graph->Draw("PL");

 m_exclusion_legend->Draw();
 cc->SetGrid();
 
 
 
}

