# Change this constants according to the project
declare -r DROPBOX_DIR="/Users/johandry/Dropbox"
declare -r RESUME_DIR="${DROPBOX_DIR}/Public/Resumes"
declare -r CODE_DIR="johandry.github.io"
declare -r MASTER="${CODE_DIR}_master"
declare -r GH_PAGES="${CODE_DIR}_gh-pages"
declare -r URL="http://johandry.com"

# Define pre_validations as needed
# pre_validations() { echo "Nothing to pre_validate"; }
pre_validations() {
  DIFF=$(diff "${RESUME_DIR}/Amador_Johandry-Resume.docx" ${GH_PAGES}/resume/Amador_Johandry-Resume.docx)
  [[ -n ${DIFF} ]] && echo "MS Word Resume is different. It have been retreived from Dropbox" && cp "${RESUME_DIR}/Resume.docx" "${GH_PAGES}/resume/Resume.docx"

  DIFF=$(diff "${RESUME_DIR}/Amador_Johandry-Resume.pdf" ${GH_PAGES}/resume/Amador_Johandry-Resume.pdf)
  [[ -n ${DIFF} ]] && echo "PDF Resume is different. It have been retreived from Dropbox" && cp "${RESUME_DIR}/Resume.pdf" "${GH_PAGES}/resume/Resume.pdf"
}
