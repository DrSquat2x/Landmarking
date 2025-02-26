#' Simulated repeat measurement and time-to-event data
#'
#' @description A simulated dataset which is a combination of longitudinal (repeat measurement) data and
#' time-to-event data. This dataset contains simulated data
#' from 3000 patients.
#'
#' The longitudinal (repeat measurement) data is formed using an LME model,
#' whose parameters were based on CVD risk assessments
#' recorded at primary care practices in New Zealand.
#'
#' A LME model was fitted to this dataset and values of \code{sbp_stnd}
#' and \code{tchdl_stnd} were estimated at landmark age 60. These values (along with the other baseline covariates)
#' were used to simulate time-to-event data from a
#' cause specific model with parameters based on CVD events of patients
#' at primary care practices in New Zealand.
#'
#' @format A dataset with 9031 rows and 12 columns:
#' \describe{
#'   \item{id}{Patient ID}
#'   \item{smoking}{Smoking status, 0 indicates the patient has never smoked, 1 indicates the patient has quit smoking, and 2 indicates the patient is a current smoker}
#'   \item{diabetes}{Diabetes status, 0 indicates the patient is not diagnosed with diabetes, and 1 indicates the patient is diagnosed with diabetes}
#'   \item{ethnicity}{Ethnicity, one of five ethnicities}
#'   \item{dob}{Date of birth}
#'   \item{index}{An index indicating assessment number for a patient}
#'   \item{sbp_stnd}{Standardised systolic blood pressure}
#'   \item{tchdl_stnd}{Standardised total cholesterol to HDL ratio}
#'   \item{response_time_tchdl_stnd}{Age that total cholesterol to HDL ratio was recorded}
#'   \item{response_time_sbp_stnd}{Age that systolic blood pressure was recorded, this is the same as the date that the fixed measures were recorded}
#'   \item{event_status}{Event status, 0 indicates censoring, 1 indicates CVD event, and 2 indicates death from other causes}
#'   \item{event_time}{Event time}
#' }
#'
"data_repeat_outcomes"
