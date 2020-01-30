# Import and Labeling
rt_df <- read.csv("/Volumes/GoogleDrive/My Drive/Khue_MACBOOK/Coursework/S20/Data science/project/week2.csv", header = T)
levels(rt_df$condition) <- c("Control", "Experimental")