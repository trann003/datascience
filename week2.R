# Import and Labeling
rt_df <- read.csv("/Volumes/GoogleDrive/My Drive/Khue_MACBOOK/Coursework/S20/Data science/project/week2.csv", header = T)
levels(rt_df$condition) <- c("Control", "Experimental")
levels(rt_df$gender) <- c("Female", "Male", "Transgender")

# Analysis
mean(rt_df$rt)
rt_f_df <- subset(rt_df, gender == "Female")
summary(rt_f_df)
hist(rt_f_df$rt)
datasets <- list(rt_df, rt_f_df)
datasets[[1]]